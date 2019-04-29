require "minitest/autorun"
require "./dog.rb"

class DogTest < Minitest::Test

	def setup
		@dog = Dog.new("firulais", 1)
	end

	def test_should_a_dog_instance
		assert_instance_of(Dog, @dog)
	end

	def test_dog_should_have_a_name
		assert_equal("firulais", @dog.name)
	end

	def test_dog_should_grow
		@dog.grow
		assert_equal(2, @dog.age)
	end

end

