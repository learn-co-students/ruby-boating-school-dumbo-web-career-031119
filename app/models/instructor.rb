class Instructor

  attr_accessor :instructor_name, :boating_test
  @@teacher = []

  def initialize(instructor_name)
    @instructor_name = instructor_name
    @@teacher << self
  end

  def self.all
    @@teacher
  end

  def pass_student(student, boating_test)
    BoatingTest.all.map do |student_inst|
      if student_inst.student == student && student_inst.boating_test == boating_test
        student_inst.status = "passed"
      else
        BoatingTest.new(student, boating_test, status = "passed", self)
      end
    end
    end

    def fail_student(student, test_name)
      BoatingTest.all.map do |student_inst|
        if student_inst.student == student && student_inst.boating_test == test_name
          student_inst.boating_test = "failed"
        else
          BoatingTest.new(student, boating_test, status = "failed", self)
        end
    end

  end

  def fail_student

  end
end
