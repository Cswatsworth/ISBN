def valid_isbn? (isbn_num)
		string_no_dashes_or_spaces = remove_spaces_and_dashes(isbn_num)
		if valid_isbn_length? (string_no_dashes_or_spaces)
			true
		else
			false
		end
end

def valid_digits(num)
 # passing in a string, return a boolean

 
	if num.length == 10 || num.length == 13
		true
	else 
		false
	end
end 


def remove_spaces_dashes(isbn_string)

	# isbn_num.delete(' ' '-')

	isbn_string.gsub(/[ -]/, '')
end


def letters(num)

	if num.match(/[a-z A-Z]/)
		false
	else
		true
	end
end


def symbols(num)

	if num.chop =~ /\D/
		false
	else
		true
	end
end


def check_for_x(numb)

	if numb[-1].match(/[0-9 x X]/)
		true
	else 
		false
	end
end


def check_digit_10(num)
	valid = false
	total = 0
	index_num = 0 #1st number is in 0 position
	index_pos = 1 #each digit: 1st, 2nd, etc
	

	counter = num.chop
	counter.length.times do 

		total = total + num[index_num].to_i * index_pos 
		index_num = index_num + 1
		index_pos = index_num + 1
	end

	digit = total % 11

	if digit == 10 && num[-1].match(/[xX]/) 
		valid = true
	elsif digit == num[-1].to_i 
		valid = true	
	
	end
	valid
end