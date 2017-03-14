def valid_isbn?(num)
	string_no_dashes_or_spaces = remove_spaces_and_dashes(num)
		if valid_isbn_length?(string_no_dashes_or_spaces)
			true
		else
			false
		end
end
	# remove_spaces_and_dashes(valid_ispn_length)
	# check_for_letters(remove_spaces_and_dashes)
	# check_for_x(


def valid_isbn_length?(num)#<<num is a string '1234...'	
				#passing in string, want a boolean returned
				#boolean, true or false.
		
		
		if num.length == 10 || num.length == 13
			true
		else 
			false

		end
end

def remove_spaces_and_dashes(isbn_string)

		#isbn_string.gsub(/[ -]/, '')  works also
		isbn_string.delete(' ' '-') #not working with !
		#isbn_string.delete
end

def check_for_letters(letters)

	if letters.match(/[a-zA-Z]/)# !! can return true or false
		false
	else
		true
	end
end

def check_for_x(x_at_end)

	if x_at_end[-1].match(/[0-9xX]/) #/starts a reg. expression, /ends it
		true
	else
		false
	end
end


def check_for_symbols(num)
	if num.chop =~ /\D/ # little d, finds any digit, big D finds any non digit
		false			#.chop deletes last position
	else
		true
	end
end


def isbn_array(isbn_string)
		num = isbn_string.split(//)#splits the string to create an array
									#// compaired to  '' ? difference
end

def multiply(isbn_num)
	isbn_values = []
	isbn_array = isbn_num.split('')
	isbn_array.each_with_index do  |value, index|
		if index < 9	# until it hits 9 it iterates through array
			num = (value.to_i * (index + 1)) #what is to_i
			isbn_values.push(num)
		#array is 0 index based, we are adding 1-9
		#hense the index +1 so we start at 1 in the array
		end
	end
	isbn_values
end

def sum(isbn_array)
	#isbn_array.inject(:+) 
	counter = 0					#iterate through instead of using .inject 
	isbn_array.each do |value|	#.inject or .reduce
	counter += value #'counter = counter + value' also can be used 
	end
	counter
end

def remainder(sum)
	sum % 11
end

def compaire_check_digit(isbn_num)
	
		isbn_value = multiply(isbn_num)
		isbn_total = sum(isbn_value)
		isbn_mod = remainder(isbn_total) 
		
			if isbn_mod == 10 && isbn_num[-1].match(/[xX]/)
				true
			elsif
				isbn_num[-1].to_i == isbn_mod
					true
			else
				false
			end
end

def valid_isbn_13?(num) #takes a string and returns a boolean
	isbn13_array = num.split('').map(&:to_i)
	sum = 0
	check_digit = 0
		isbn13_array.each_with_index do |value, index|
				break if index == 12
				if index % 2 == 0
						sum += value * 1
				else
						sum += value * 3
				end
		end
	sum = sum % 10
	check_digit = 10 - sum
			if check_digit == 10
					check_digit = 0
			end
	isbn13_array[12] == check_digit

end



def valid_isbn(num)
		string_no_dashes_or_spaces = remove_spaces_and_dashes(num)
			
			if 
					check_for_symbols(string_no_dashes_or_spaces) && string_no_dashes_or_spaces.length == 10
					check_for_letters(string_no_dashes_or_spaces)
					check_for_x(string_no_dashes_or_spaces)
					compaire_check_digit(string_no_dashes_or_spaces)
			elsif 
					check_for_symbols(string_no_dashes_or_spaces) && string_no_dashes_or_spaces.length == 13
					check_for_letters(string_no_dashes_or_spaces)
					check_for_x(string_no_dashes_or_spaces)
					compaire_check_digit(string_no_dashes_or_spaces)
			# 	true
			 else
				false
			end
end