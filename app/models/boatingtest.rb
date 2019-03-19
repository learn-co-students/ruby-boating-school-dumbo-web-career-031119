class BoatingTest

  attr_accessor :name, :status, :student, :instructor

  @@boating_tests = []

  def initialize(name, status, student, instructor)
    @name = name
    @status = status
    @student = student
    @instructor = instructor
    @@boating_tests << self
  end

  def self.all
    @@boating_tests
  end

end
