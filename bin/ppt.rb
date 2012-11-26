# File : ppt.rb

defeat = { :rock=>:scissor, :paper=>:rock, :scissor=>:paper }
throws = defeat.keys
    
player_throws = (ARGV.shift || '').to_sym
      
raise SystaxError, " Jugada incorrecta, debes elegir : '#{throws.join(', ')}'" unless throws.include? player_throws
      
computer_throws = throws.sample
      
answer =  case player_throws
	  when computer_throws
	    " EMPATE"
	  when defeat[computer_throws]
	    " Has perdido -->  #{@computer_throw}  gana a #{@player_throw}"
	  else 
	    " Has ganado --> #{@player_throw}  gana a  #{@computer_throw}"
	  end
      
puts answer

