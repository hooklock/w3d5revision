require_relative('../db/sql_runner')

class Match

  attr_reader(:id, :home_team_id, :away_team_id, :home_team_score, :away_team_score)

  def initialize(options)
    @id = options['id'].to_i
    @home_team_id = options['home_team_id'].to_i
    @away_team_id = options['away_team_id'].to_i
    @home_team_score = options['home_team_score'].to_i
    @away_team_score = options['away_team_score'].to_i
  end

  def save()
    sql = "INSERT INTO matches (home_team_id, away_team_id, home_team_score, away_team_score) VALUES ('#{@home_team_id}', '#{@away_team_id}', '#{@home_team_score}', '#{@away_team_score}') RETURNING *"
    return Match.map_item(sql)
  end

  def self.all()
    sql = "SELECT * FROM matches"
    return Match.map_items(sql)
  end

  def teams()
    sql = "SELECT * FROM teams WHERE id = #{@home_team_id} OR id = #{@away_team_id}"
    return Team.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM matches"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    matches = SqlRunner.run(sql)
    result = matches.map { |match| Match.new(match) }
    return result
  end

  def self.map_item(sql)
    result = Match.map_items(sql)
    return result.first
  end

end