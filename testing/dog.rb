class Dog
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	def grow
		@age += 1
	end
end