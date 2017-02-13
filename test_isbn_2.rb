require 'minitest/autorun'
require_relative 'isbn_2.rb'

class TestIsbnLength < MiniTest::Test 
	def test_10_returns_true
		num = '1234567890'
		assert_equal(true, valid_digits(num))
	end

	def test_9_returns_false
		num = '123456789'
		assert_equal(false, valid_digits(num))
	end

	def test_true_for_isbn_length
		num = '1234X67890'
		assert_equal(true, valid_digits(num))
	end
 
	def test_isbn_10_with_spaces_and_dashes
		num = '12 3-45--67-8 90'
		assert_equal('1234567890', remove_spaces_dashes(num))
	end

	def test_letter_returns_false
		num = '1d34g6y890'
		assert_equal(false, letters(num))
	end

	def test_no_letter_returns_true
		num = '1234567890'
		assert_equal(true, letters(num))
	end

	def test_symbol_false
		num = '123#567&90'
		assert_equal(false, symbols(num))
	end

	def test_no_symbol_true
		num = '0987654321'
		assert_equal(true, symbols(num))
	end

	def test_x_at_last_position_valid_isbn
		num = '123456789x'
		assert_equal(true, check_for_x(num))
	end

	def test_returns_false
		num = '123456789s'
		assert_equal(false, check_for_x(num))
	end

	def test_isbn_as_10_seperate_arrays
		num = '123456789'
		assert_equal(["1","2","3","4","5","6","7","8","9",], isbn_array(num))
	end

	def test_multiply_string_by_position
		results = ('1234567890')
		assert_equal([1, 4, 9, 16, 25, 36, 49, 64, 81, 0], results)
	end

	def test_sum_of_isbn
		results = sum([1,2,3,4,5,6,7,8,9,0],results)
		assert_equal(45, results)
	end

	def test_returns_remainder
		results = remainder(11)
		assert_equal(0, results)
	end

	def test_returns_modulus_11
		results = remainder(232)#any number divisible by 11 with 1 remainder
		assert_equal(1, results)
	end

	def test_remainder_results_equal_to_last_digit
		results = compaire_check_digit('877195869x')
	end

	def test_check_digit_returns_true
		num = '0471958697'
		assert_equal(true, check_digit_10(num))
	end

	def test_check_also_returns_true
		num = '0-321-14653 0'
		assert_equal(true, check_digit_10(num))
	end

	def test_check_returns_false
		num = '7421394 762'
		assert_equal(false, check_digit_10(num))
	end
end