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

  def add_boating_test
    BoatingTest.new(self, boating_test, status, instuctor)
  end

  def self.find_student
    binding.pry
  end

  def grade_percentage

  end

end
