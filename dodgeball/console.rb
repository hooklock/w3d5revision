require_relative('./models/match')
require_relative('./models/team')
require_relative('./models/league')
require('pry-byebug')

teams = Teams.all()
matches = Matches.all()
league = League.new(teams, matches)

# team1 = Team.new({'name' => "Rubyists", 'location' => 'Edinburgh'})
# team2 = Team.new({'name' => "Java Scriptors", 'location' => 'Perth'})
# team3 = Team.new({'name' => "SQL Surfers", 'location' => 'Inverness'})
# team4 = Team.new({'name' => "Atomites", 'location' => 'Glasgow'})

# t1 = team1.save()
# t2 = team2.save()
# t3 = team3.save()
# t4 = team4.save()

# match1 = Match.new({'home_team_id' => t1.id, 'away_team_id' => t2.id, 'home_team_score' => 3, 'away_team_score' => 2})
# match2 = Match.new({'home_team_id' => t3.id, 'away_team_id' => t4.id, 'home_team_score' => 3, 'away_team_score' => 1})
# match3 = Match.new({'home_team_id' => t2.id, 'away_team_id' => t1.id, 'home_team_score' => 5, 'away_team_score' => 2})
# match4 = Match.new({'home_team_id' => t4.id, 'away_team_id' => t3.id, 'home_team_score' => 6, 'away_team_score' => 4})
# match5 = Match.new({'home_team_id' => t1.id, 'away_team_id' => t3.id, 'home_team_score' => 3, 'away_team_score' => 7})
# match6 = Match.new({'home_team_id' => t2.id, 'away_team_id' => t4.id, 'home_team_score' => 4, 'away_team_score' => 6})
# match7 = Match.new({'home_team_id' => t3.id, 'away_team_id' => t1.id, 'home_team_score' => 6, 'away_team_score' => 3})
# match8 = Match.new({'home_team_id' => t4.id, 'away_team_id' => t2.id, 'home_team_score' => 2, 'away_team_score' => 5})
# match9 = Match.new({'home_team_id' => t1.id, 'away_team_id' => t4.id, 'home_team_score' => 1, 'away_team_score' => 3})
# match10 = Match.new({'home_team_id' => t2.id, 'away_team_id' => t3.id, 'home_team_score' => 4, 'away_team_score' => 5})
# match11 = Match.new({'home_team_id' => t4.id, 'away_team_id' => t1.id, 'home_team_score' => 3, 'away_team_score' => 6})
# match12 = Match.new({'home_team_id' => t3.id, 'away_team_id' => t2.id, 'home_team_score' => 2, 'away_team_score' => 5})

# m1 = match1.save()
# m2 = match2.save()
# m3 = match3.save()
# m4 = match4.save()
# m5 = match5.save()
# m6 = match6.save()
# m7 = match7.save()
# m8 = match8.save()
# m9 = match9.save()
# m10 = match10.save()
# m11 = match11.save()
# m12 = match12.save()


binding.pry
nil