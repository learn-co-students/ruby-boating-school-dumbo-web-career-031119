class Instructor

  attr_accessor :name

  @@instructors = []

  def initialize(name)
    @name = name
    @@instructors << self
  end

  def self.all
    @@instructors
  end

  def pass_student(student, test_name)
    boat_test = BoatingTest.all.find do |boating_test|
      boating_test.instructor == self && boating_test.student == student && boating_test.name == test_name
    end

    if boat_test == nil
      boat_test = BoatingTest.new(test_name, "passed", student, self)
    else
      boat_test.status = "passed"
    end

    return boat_test
  end

  def fail_student(student, test_name)
    boat_test = BoatingTest.all.find do |boating_test|
      boating_test.instructor == self && boating_test.student == student && boating_test.name = test_name
    end

    if boat_test == nil
      boat_test = BoatingTest.new(test_name, "failed", student, self)
    else
      boat_test.status = "failed"
    end

    return boat_test
  end


end
