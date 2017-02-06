def valid_ispn_length?(num)#<<num is a string '1234...'	
				#passing in string, want a boolean returned
				#boolean, true or false.
		
		if num.length == 10 || num.length == 13
			true
		else 
			false

		end
end

def remove_spaces_and_dashes(isbn_string)

		#isbn_string.gsub(/['-']/, '')   not working
		isbn_string.delete!(' ')# ! makes it pass, no comma between (' ') '-'
		isbn_string.delete('-')
end

def check_for_letters(letters)

	if letters.chop.match(/[a-zA-Z]/)# !! returns true or false
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


def isbn_length?(num)
	if num.length == 13
		true
	else
		false
	end
end


def remove_symbols(isbn_string)
	isbn_string.delete!(';')#only passing with '!' why?
	isbn_string.delete(':')
end


def check_for_symbols(num)
	if num.chop =~ /\D/ # little d, finds any digit, big D finds any non digit
		true			#.chop deletes last position
	else
		false
	end
end




def isbn_array(isbn_string)
		num = isbn_string.split(//)
end