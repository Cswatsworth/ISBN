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
	def test_removes_spaces_and_dashes
		num = '123 456 789 0' '123-456-789-0'
		assert_equal('1234567890''1234567890', remove_spaces_and_dashes(num))
	end
end