def valid_isbn? (isbn_num)
	string_no_dashes_or_spaces = remove_spaces_and_dashes(isbn_num)
		if valid_isbn_length? (string_no_dashes_or_spaces)
			true
		else
			false
		end
	
end

def valid_isbn_length?(num) 
	if num.length == 10 || num.length == 13
		true
	else
		false
	end
end

def remove_spaces_and_dashes(isbn_string)

	isbn_string.delete!(' ')
	isbn_string.delete('-')
end
