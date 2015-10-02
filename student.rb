class Student

	attr_accessor :name, :age, :scores, :GPA

	def initialize(name, courses)
		@name = name
		@courses = courses
	end

	def add_course(name, score)
		cou
	end

	def cal_gp
		total_sco = 0
		courses.score.each do |n|
			total_sco += n
		end
		@GPA = total_sco / courses.length
	end

	def summary 
		both = []
		puts @courses
		(0...@courses.name.length).each do |n|
			both.push(@courses[n].name  + " " + @courses[n].score)
		end
		"""
		#{name}
			#{both}
		#{cal_gp}
		"""
	end

end