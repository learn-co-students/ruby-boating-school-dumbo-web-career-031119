class Student

  attr_accessor :first_name, :boating_test
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(boating_test, status, instuctor)
    BoatingTest.new(self, boating_test, status, instuctor)
  end

  def self.find_student(name)
    Student.all.select do |student|
      student.first_name == name
    end
  end

  def grade_percentage
    student = BoatingTest.all.select do |test|
      test.student == self
     end
    passed = student.select  do |stat|
       stat.status == "passed"
     end
     failed = student.select do |stat|
        stat.status == "failed"
      end
       ratio = passed.length.to_f/student.length.to_f

       return ratio * 100
  end

end
