require 'minitest/autorun'
require_relative 'isbn_2.rb'

class TestValidIsbnFunction < Minitest::Test
	def test_1_equals_one
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
	# def test_x_as_5_stays_true#everything length of 10, true
	# 			#true because, x, is counted in the string
	# 		num = '1234x567890'
	# 		assert_equal(true, valid_isbn_length?(num))
	 #another example
	def test_removes_spaces_and_dashes
		num = '123-456 789-0'
		assert_equal('1234567890', remove_spaces_and_dashes(num))
	end
	def test_for_letters_flase #invalid isbn, even tho correct length
		num = '123v456c78'
		assert_equal(false, check_for_letters(num))
	end
	def test_true_if_x_is_last_position
		num = '1234567890x'
		assert_equal(true, check_for_x(num))
	end
	def test_false_if_x_is_last_position
		num = '123456789?'
		assert_equal(false, check_for_x(num))
	end
	def test_check_for_symbols
		num = '123#456$7890'
		assert_equal(false, check_for_symbols(num))
	end
end


