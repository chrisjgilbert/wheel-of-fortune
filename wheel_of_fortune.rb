def wheel_of_fortune
	puts "Pleaes enter a starting sentence!"
	starting_sentence = gets.chomp.downcase
	sentence_array = starting_sentence.split("").map(&:downcase)
	account_count = sentence_array - [" "]
	final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split("") # gsub works on strings

	while sentence_array.count("") < account_count.count
		puts "Guess a letter:"
		guess = gets.downcase.chomp
		if sentence_array.include?(guess) # use indlude on arrays
			letter_index = sentence_array.find_index(guess)
			sentence_array[letter_index] = ""
			final_sentence[letter_index] = guess
			puts "Correct! The sentence is now #{final_sentence.join}"
		else
			puts "Sorry that isn't the right answer! Try again!"
		end
	end

	puts "Great job!. Play again? 'Y' or 'N'?"
	answer = gets.chomp.downcase
		if answer == 'y' 
			wheel_of_fortune
		else
			puts "Goodbye!"
		end
end

wheel_of_fortune
