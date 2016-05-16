class League

  def initialize(matches)
    @matches = matches
    # @teams = teams
  end

  # def match_winners()
  #   winning_teams = []
  #   for match in @matches.map do
  #     if match.home_team_score > match.away_team_score
  #     winning_teams << match.home_team_id.to_i
  #     else
  #     winning_teams << match.away_team_id.to_1
  #     end
  #   end
  #   return winning_teams
  # end

  def return_score(score)
    return "#{score}"    
  end

  def away_score
  @matches[0].map{ |key, value| return_score(value) if key == "away_team_score" }
  end

  # def match1_winner
  #   for match in @matches
  # end

  #def most_wins
  #end

  # def league_winner

  # end


end