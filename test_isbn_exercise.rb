require 'minitest/autorun'
require_relative 'isbn_exercise.rb'

class TestIsbnFunction < Minitest::Test
	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_returns_true
			num = '1234567890'
			assert_equal(true, valid_ispn_length?(num))
	end
	def test_returns_false
			num = '123456789'
			assert_equal(false, valid_ispn_length?(num))
	end
	def test_x_replaced_5_still_true_anything_with_length_of_10
			#it is still true becuase x is counted in the string
			num = '1234x67890'
			assert_equal(true, valid_ispn_length?(num))
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
			num = '123456789012x'
			assert_equal(true, check_for_x(num))
	end
	# def test_for_symbols
	# 		num = '123;45'
	# 		assert_equal(false, check_for_symbols)
	# end
	def  test_for_length_13
			num = '1234567890123'
			assert_equal(true, isbn_length?(num))
	end
end