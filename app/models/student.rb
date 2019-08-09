class Student

  attr_accessor :first_name

  @@students = []

  def initialize(first_name)
    @first_name = first_name
    @@students << self
  end

  def self.all
    @@students
  end

  def add_boating_test(name, status, instructor)
    boating_test = BoatingTest.new(name, status, self, instructor)
  end

  def self.find_student(name)
    self.all.select do |student|
      student.first_name == name
    end
  end

  def grade_percentage
    boats_arr = BoatingTest.all.select do |boating_test|
      boating_test.student == self
    end

    passed_arr = boats_arr.select do |boat|
      boat.status == "passed"
    end

    percentage = (passed_arr.length.to_f/boats_arr.length.to_f) * 100
    binding.pry
    return percentage
  end

end
