require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#-------------------------- Students--------------------------------------------
kyle = Student.new("kyle")
kylie = Student.new("kylie")
john = Student.new("john")
spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
 
#--------------------------Instructors--------------------------------------------
capt_awesome = Instructor.new("Captain Awesome")
sgr = Instructor.new("Capt Shizz Got Realz")
fonz = Instructor.new("The Fonz")
puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

#-------------------------- Boating Tests ---------------------------------------
# supertest = BoatingTest.new(student, "insane test", "fail", instructor)
# supertest1 = BoatingTest.new(student, "insane test", "win", instructor)
# supertest2 = BoatingTest.new(student, "insane test", "fail", instructor)
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)
surfboarding1 = kyle.add_boating_test("Surfboarding", "failed", capt_awesome)
surfboarding2 = kyle.add_boating_test("Surfboarding", "passed", capt_awesome)
surfboarding3 = kylie.add_boating_test("Surfboarding", "passed", capt_awesome)
surfboarding4 = spongebob.add_boating_test("Surfboarding", "passed", capt_awesome)
 
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

