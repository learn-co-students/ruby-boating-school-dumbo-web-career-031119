class BoatingTest

  attr_accessor :student, :instructor, :boating_test, :status

  @@all = []

  def initialize(student, boating_test, status, instructor)
    @student = student
    @instructor = instructor
    @boating_test = boating_test
    @status =status
    @@all << self
  end

  def self.all
    @@all
  end
end
