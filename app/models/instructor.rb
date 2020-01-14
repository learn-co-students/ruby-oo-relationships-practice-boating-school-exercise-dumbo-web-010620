class Instructor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(name, test_name)
        test = BoatingTest.all.find {|i|i.test_name == test_name && i.student == name}
        test.status = "passed"
        test
    end

    def fail_student(name, test_name)
        test = BoatingTest.all.find {|i|i.test_name == test_name && i.student == name}
        if test
            test.status = "failed"
        else
            BoatingTest.new(name, test_name, "failed", self)
        end
    end

end
