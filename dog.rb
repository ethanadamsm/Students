class	Dog

	attr_accessor :name, :color, :breed

	def initialize(name, color, breed) 
		@name = name
		@color	= color
		@breed = breed
	end

	def bark
		puts "woof"
	end

	def terrier?
		breed.downcase == "terrier"
	end

end