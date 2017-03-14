require 'minitest/autorun'
require_relative 'isbn_exercise.rb'

class TestIsbnFunction < Minitest::Test
	def test_1_equals_1
		assert_equal(1,1)
	end
	
	def test_valid_isbn_length_returns_true
			num = '1234567890'
			assert_equal(true, valid_isbn_length?(num))
	end
	
	def test_invalid_isbn_length_returns_false
			num = '123456789'
			assert_equal(false, valid_isbn_length?(num))
	end
	
	def test_x_replaced_5_still_true_anything_with_length_of_10
			#it is still true becuase x is counted in the string
			num = '1234x67890'
			assert_equal(true, valid_isbn_length?(num))
	end

	def  test_for_length_13
			num = '1234567890123'
			assert_equal(true, valid_isbn_length?(num))
	end

	def test_for_length_of_13_false
			num = '123456789012'
			assert_equal(false, valid_isbn_length?(num))
	end

	def test_remove_spaces #isbn numbers return, minus spaces
			num = '123 456 789 0' #isbn string
			assert_equal('1234567890', remove_spaces_and_dashes(num))
	end
	
	def test_remove_dashes
			num = '123-456-789-0'
			assert_equal('1234567890', remove_spaces_and_dashes(num))
	end
	
	def test_check_for_letters
			num = '123m456d7890'
			assert_equal(false, check_for_letters(num))
	end
	
	def test_true_if_x_is_at_the_end
			num = '1234567890x'
			assert_equal(true, check_for_x(num))
	end
	
	def test_false_if_x_is_at_then_end
			num = '123456789?'
			assert_equal(false, check_for_x(num))
	end
	
	# def test_for_symbols #extra test, using different method
	# 		num = '123;45:67890'
	# 		assert_equal('1234567890', remove_symbols(num))
	# end
	
	def test_for_symbols_false_for_valid_isbn #true if isbn has symbols
			num = '123;456:7890'
			assert_equal(false, check_for_symbols(num))
	end
	
	def test_for_symbols_true_valid_isbn #false becuase it does not have symbols
			num = '1234567890'
			assert_equal(true, check_for_symbols(num))
	end
	
	def test_isbn_is_10_seperate_arrays
			num = '123456789'
			assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9",], isbn_array(num))
	end
	
	def test_multiply_string_by_position
			results = multiply('123456789')
			assert_equal([1, 4, 9, 16, 25, 36, 49, 64, 81], results)
	end
	
	def test_sum_of_isbn
			results = sum([1,2,3,4,5,6,7,8,9])
			assert_equal(45, results)
	end 
	
	def test_return_whats_left_#mod 11
			results = remainder(11)
			assert_equal(0, results)
	end
	
	def test_returns_modulus_11
			results = remainder(232)
			assert_equal(1, results)
	end
	
	def test_remainder_results_equal_to_last_digit
			results = compaire_check_digit('877195869x')
			assert_equal(true, results)
	end
	
	def test_remainder_false
			results = compaire_check_digit('877&95869x')
			assert_equal(false, results)
	end
	
	def test_invalid_character
			results = compaire_check_digit('877&958x')#passes with non digits
			assert_equal(false, results)
	end
	
	def test_valid_ispn
			results = valid_isbn?('0132971291')
			assert_equal(true, results)
	end

	def test_isbn
			results = valid_isbn?('0226548996')
			assert_equal(true, results)  #found using app.rb local site
	end

	def test_isbn?
			results = valid_isbn?('8888888888')
			assert_equal(true, results)
	end

end

class TestIsbn13 < Minitest::Test

	def test_mod_11_equals_1
			results = remainder(12)
			assert_equal(1, results)
	end

	def test_true_if_remainder_equals_check_digit
			results = compaire_check_digit('877195869x')
			assert_equal(true, results)
	end

	def test_false_for_check_digit_symbols
			results = compaire_check_digit('87^19&869x')
			assert_equal(false, results)
	end

	def test_invalid_isbn_13
			isbn13 = '4780470059029'
			assert_equal(false, valid_isbn_13?(isbn13))
	end

	def test_valid_isbn_13
			isbn13 = '978-3-16-148410-0'
			assert_equal(false, valid_isbn_13?(isbn13))
	end
end

