class Student

    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(student_name)
        all.find{ |i| i.first_name == student_name}
    end

    def grade_percentage
        student_test = BoatingTest.all.select{|i|i.student == self}
        test = student_test.count.to_f
        student_pass = student_test.select{|i|i.status == "passed"}
        pass = student_pass.count.to_f
        percent = (pass/test)*100
    end




end
