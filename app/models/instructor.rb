class Instructor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    test = BoatingTest.all.find { |test|
      test.test_name == test_name && test.student == student } ||
      BoatingTest.new(student, test_name, "passed", self)
    test.test_status = "passed"
    test
  end

  def fail_student(student, test_name)
    test = pass_student(student, test_name)
    test.test_status = "failed"
    test
  end


end
