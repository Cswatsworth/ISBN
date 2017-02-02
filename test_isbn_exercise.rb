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
end