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

  def pass_student

  end

  def fail_student

  end
end
