require_relative('../db/sql_runner')

class Team

  attr_reader(:id, :name, :location)

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @location = options['location']
  end

  def save()
    sql = "INSERT INTO teams (name, location) VALUES ('#{@name}', '#{@location}') RETURNING *"
    return Team.map_item(sql)
  end

  def self.all()
    sql = "SELECT * FROM teams"
    return Team.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM teams"
    SqlRunner.run(sql)
  end

  # def matches()
  #   sql = "SELECT * FROM matches WHERE home_team_id = #{@id} OR away_team_id = #{@id}"
  #   return Match.map_items(sql)
  # end

  def self.map_items(sql)
    teams = SqlRunner.run(sql)
    result = teams.map { |team| Team.new(team) }
    return result
  end

  def self.map_item(sql)
    result = Team.map_items(sql)
    return result.first
  end

end