class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError;  end

  def self.winner(player1, player2)
  	strategy = player1[1]+player2[1]
    raise NoSuchStrategyError.new("Strategy must be one of R,P,S") if strategy !~ /(R|P|S){2}/
    strategy  =~ /rs|sp|pr|rr|ss|pp/i ? player1 : player2
  end

  def self.tournament_winner(tournament)
  	if tournament.length==2 && tournament.first[0].is_a?(String) 
  		winner(tournament[0],tournament[1]) 
  	else 
  		winner(tournament_winner(tournament[0...tournament.length/2]), 
      tournament_winner(tournament[tournament.length/2..-1]))
  	end
  end
  
end



