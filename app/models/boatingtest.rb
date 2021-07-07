class BoatingTest
    attr_accessor :student, :test_name, :status, :instructor
    @@all = []

    def initialize(student, test_name, status, instructor)
        @student = student #Student Object
        @test_name = test_name #test name string.
        @status = status #status string.
        @instructor = instructor #instructor Object

        @@all << self
    end

    def self.all 
        @@all
    end


end


# `BoatingTest` class:
# * should initialize with Student (Object), a boating test name (String) - DONE
# a boating test status (String), and an Instructor (Object) - DONE
# * `BoatingTest.all` returns an array of all boating tests - self.all = boatingtest.all - DONE