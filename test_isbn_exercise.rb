require 'minitest/autorun'
require_relative 'isbn_exercise.rb'

class TestIsbnFunction < Minitest::Test
	def test_1_equals_1
		assert_equal(1,1)
	end
	def test_returns_true
			num = '1234567890'
			assert_equal(true, valid_isbn_length?(num))
	end
	def test_returns_false
			num = '123456789'
			assert_equal(false, valid_isbn_length?(num))
	end
	def test_x_replaced_5_still_true_anything_with_length_of_10
			#it is still true becuase x is counted in the string
			num = '1234x67890'
			assert_equal(true, valid_isbn_length?(num))
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
	def  test_for_length_13
			num = '1234567890123'
			assert_equal(true, isbn_length?(num))
	end
	def test_for_symbols #extra test, using different method
			num = '123;45:67890'
			assert_equal('1234567890', remove_symbols(num))
	end
	def test_for_symbols_return_true #true if isbn has symbols
			num = '123;456:7890'
			assert_equal(true, check_for_symbols(num))
	end
	def tes_thrid_test_for_symbols #false becuase it does not have symbols
			num = '1234567890'
			assert_equal(false, check_for_symbols(num))
	end
	def test_isbn_is_10_seperate_arrays
			num = '1234567890'
			assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"], isbn_array(num))
	end
	def test_multiply_string_by_position
			results = multiply('123456789')
			assert_equal([1, 4, 9, 16, 25, 36, 49, 64, 81], results)
	end
	def test_sum_of_isbn
			results = sum([1,2,3,4,5,6,7,8,9])
			assert_equal(45, results)
	end 
	def test_return_whats_left
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
	def test_remainder_equal_to_last_digit
			results = compaire_check_digit('877195869X')
			assert_equal(true, results)
	end
	def test_remainder_false
			results = compaire_check_digit('123654789')
			assert_equal(false, results)
	end
	def test_invalid_character
			results = compaire_check_digit('123$56789')#passes with non digits
			assert_equal(false, results)
	end
	def test_remainder_equal_to_last_digit_false2
			results = compaire_check_digit('12#^567')
			assert_equal(false, results)
	end
	def test_valid_ispn
		results = valid_isbn?('0132971291')
		assert_equal(true, results)
	end
end
