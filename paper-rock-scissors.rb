def game	
	puts 'Chose one: (P/R/S)'
	pick = gets.chomp.strip
	until pick.length == 1 && ! pick.scan(/[prsPRS]/).empty?
		puts 'Invalid input, you asshole!'
		puts 'Chose one: (P/R/S)'
		pick = gets.chomp.strip
	end
	pick.downcase!
	player_bet = 0
	if pick == 's' then player_bet = 1; puts 'You chose Scissors!'
	elsif pick == 'r' then player_bet = 2; puts 'You chose Rock!'
	elsif pick == 'p' then player_bet = 3; puts 'You chose Paper!'
	end
	computer_bet = rand(1..3)
	if computer_bet == 1 then puts 'Computer chooses Scissors!'
	elsif computer_bet == 2 then puts 'Computer chooses Rock!'
	elsif computer_bet == 3 then puts 'Computer chooses Paper!'
	end
	result = player_bet + computer_bet 
	if player_bet == computer_bet then puts ' There is a tie!' * 5
	elsif result == 5 then puts ' Paper wins!' * 5
	elsif result == 4 then puts ' Scissors win!' * 5
	elsif result == 3 then puts ' Rock wins!' * 5
	end
end

puts "\n" * 50
puts 'Play Paper, Rock, Scissors!'
game
puts "\nWant to play again? (Y/N)"
again = gets.chomp.strip 
while again == 'y' || again == 'Y'	
	game
	puts 'Want to play again? (Y/N)'
	again = gets.chomp.strip	
end