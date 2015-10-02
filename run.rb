require_relative "student.rb"
require_relative "course.rb"

names = []
classes = nil
scores = []
students = []
courses = []
file = open("grades.csv")
grades_txt = file.read
grades_array = grades_txt.split(/\n+/)

(1...grades_array.length).each do |n|
	names.push(grades_array[n].split(",")[0])
	new_array = grades_array[n].split(",")
	new_array = new_array[1...new_array.length]
	new_array_f = []
	(0...new_array.length).each do |x|
		new_array_f.push(new_array[x].to_f)
	end
	scores.push(new_array)
end

classes = grades_array[0].split(",")

(0...names.length).each do |n|
	student_c = []
	(0...scores.length).each do |x|
		courses.push(Course.new(classes[x], scores[x]))
	end
	courses.push(student_c)
end

(0...names.length).each do |n|
	students.push(Student.new(names[n], courses[n]))
end

(0...students.length).each do |n|
	if students[n].name == "Alice"
		puts students[n].summary
	end
end
