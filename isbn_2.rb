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
	#OR isbn_num.gsub(/[ -]/, '') #a regex
	isbn_string.delete!(' ')
	isbn_string.delete('-')
end
def check_for_x(isbn_x)
 	if isbn_x[-1].match(/[0-9xX]/)
 		true
 	else
 		false
 	end
 end
 def check_for_letters(letters)
 	if letters.chop.match(/[a-zA-Z]/)
 		false
 	else
 		true
 	end
 end
 def check_for_symbols(isbn_num)
 	if isbn_num.chop =~ /\D/ #removing anything non numeric
 		false
 	else
 		true
 	end
 end	