class Student
    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end
    
    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(first_name)
        self.all.find { |student| student.first_name == first_name }
        # self.all.find do |student| #iterates through each instance of a Student class
        #     student.first_name == first_name
        # end
    end

    def grade_percentage
        #------------------tests for total by name----------------
        # tests_by_students iterates through ALL tests, and pulls out ALL tests based by self.first_name. now all named tests are in an array.
        tests_by_students = BoatingTest.all.select {|test| test.student.first_name == self.first_name } # goes through the BoatingTest class and pulls all the info with matching first names between this student.rb file and Boatingtest.rb file.
        #total_tests <-- gives the [array].length of the named tests based on what was returned from above.
        total_tests = tests_by_students.length #gives me the total amt of tests passed based on student name (from previous function)
        
        #------------------tests for total PASSED by name--------------
        # tests_passed iterates through ALL tests, pulls out ALL tests based by self.first_name AND status == 'passed'
        test_passed = tests_by_students.select {|test| test.status == "passed" }
        #total_passed <-- gives the [array].length of the total passed tests.
        total_passed = test_passed.length

        percentage = ((total_passed/total_tests) * 100).to_f
        #To be continued

        # * `Student#grade_percentage` should return the percentage of tests that the student has passed, 
        # a Float (so if a student has passed 3 / 9 tests that they've taken, 
        # this method should return the Float `33.33`)

    end

    def self.all
        @@all
    end
end


# `Student` class:
# * should initialize with `first_name` - DONE
# * `Student.all` should return all of the student instances - DONE
# * `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# * `Student.find_student` will take in a first name and output the student (Object) with that name

# * `Student#grade_percentage` should return the percentage of tests that the student has passed, 
# a Float (so if a student has passed 3 / 9 tests that they've taken, 
# this method should return the Float `33.33`)