def valid_ispn_length?(num)#<<num is a string '1234...'	
				#passing in string, want a boolean returned
				#boolean, true or false.
		
		if num.length == 10
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

	if letters.match(/[a-z A-Z]/)# !! returns true or false
		false
	else
		true
	end
end

def check_for_x (x_at_end)

	# x_at_end.upcase
	# if x_at_end[-1] == 'X' || x_at_end[-1] ==[0..9]
	# 	true
	# else
	# 	false
	# end

	if x_at_end[-1].match(/[0-9 x X]/)
		true
	else
		false
	end
end
