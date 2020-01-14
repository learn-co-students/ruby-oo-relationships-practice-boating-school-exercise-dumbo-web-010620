require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("Apple")
student2 = Student.new("Banana")

instructor1 = Instructor.new("Instructor_1")
instructor2 = Instructor.new("Instructor_2")

test1 = BoatingTest.new(student1, "Test 1", "passed", instructor1)
test2 = BoatingTest.new(student2, "Test 2", "pending", instructor1)
test3 = BoatingTest.new(student2, "Test 1", "pending", instructor2)
test4 = BoatingTest.new(student1, "Test 3", "pending", instructor1)
test5 = BoatingTest.new(student1, "Test 4", "pending", instructor2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

