require_relative('./models/match')
require_relative('./models/team')
require_relative('./models/league')
require('pry-byebug')

Match.delete_all()
Team.delete_all()

team1 = Team.new({'name' => "Ricks Rubyists", 'location' => 'Edinburgh'})
team2 = Team.new({'name' => "Aidans Archers", 'location' => 'Dundee'})
team3 = Team.new({'name' => "Harrys Hurricanes", 'location' => 'Perth'})
team4 = Team.new({'name' => "Chriss Crushers", 'location' => 'Edinburgh'})
team5 = Team.new({'name' => "Henrys Hawks", 'location' => 'Oxford'})
team6 = Team.new({'name' => "Lewiss Lobbers", 'location' => 'Aberdeen'})
team7 = Team.new({'name' => "Beckys Bombers", 'location' => 'Edinburgh'})
team8 = Team.new({'name' => "Davids Dominators", 'location' => 'Edinburgh'})

t1 = team1.save()
t2 = team2.save()
t3 = team3.save()
t4 = team4.save()
t5 = team5.save()
t6 = team6.save()
t7 = team7.save()
t8 = team8.save()

match1 = Match.new({'home_team_id' => t1.id, 'away_team_id' => t2.id, 'home_team_score' => 3, 'away_team_score' => 5})
match2 = Match.new({'home_team_id' => t3.id, 'away_team_id' => t4.id, 'home_team_score' => 7, 'away_team_score' => 4})
match3 = Match.new({'home_team_id' => t8.id, 'away_team_id' => t5.id, 'home_team_score' => 6, 'away_team_score' => 5})
match4 = Match.new({'home_team_id' => t6.id, 'away_team_id' => t7.id, 'home_team_score' => 2, 'away_team_score' => 3})
match5 = Match.new({'home_team_id' => t2.id, 'away_team_id' => t1.id, 'home_team_score' => 4, 'away_team_score' => 5})
match6 = Match.new({'home_team_id' => t4.id, 'away_team_id' => t3.id, 'home_team_score' => 5, 'away_team_score' => 3})
match7 = Match.new({'home_team_id' => t5.id, 'away_team_id' => t8.id, 'home_team_score' => 4, 'away_team_score' => 1})
match8 = Match.new({'home_team_id' => t7.id, 'away_team_id' => t6.id, 'home_team_score' => 1, 'away_team_score' => 2})

m1 = match1.save()
m2 = match2.save()
m3 = match3.save()
m4 = match4.save()
m5 = match5.save()
m6 = match6.save()
m7 = match7.save()
m8 = match8.save()



binding.pry
nil