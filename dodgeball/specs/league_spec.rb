require('minitest/autorun')
require_relative('../models/league')
require_relative('../models/match')
require_relative('../models/team')

class TestLeague < MiniTest::Test

  def setup
    team1 = Team.new({'name' => "Rubyists", 'location' => 'Edinburgh'})
    team2 = Team.new({'name' => "Java Scriptors", 'location' => 'Perth'})
    team3 = Team.new({'name' => "SQL Surfers", 'location' => 'Inverness'})
    team4 = Team.new({'name' => "Atomites", 'location' => 'Glasgow'})
    match1 = Match.new({'home_team_id' => team1.id, 'away_team_id' => team2.id, 'home_team_score' => 3, 'away_team_score' => 2})
    match2 = Match.new({'home_team_id' => team3.id, 'away_team_id' => team4.id, 'home_team_score' => 3, 'away_team_score' => 1})
    match3 = Match.new({'home_team_id' => team2.id, 'away_team_id' => team1.id, 'home_team_score' => 5, 'away_team_score' => 2})
    match4 = Match.new({'home_team_id' => team4.id, 'away_team_id' => team3.id, 'home_team_score' => 6, 'away_team_score' => 4})
    @teams = [team1, team2, team3, team4]
    @matches = [match1, match2, match3, match4]
    @league = League.new(@matches)
  end

  # def test_match_winners
  #   result = @league.match_winners
  #   assert-equal('[1,3,2,4]', result)
  # end

def test_away_score
  result = @league.away_score
  assert-equal(2, result)
end

end