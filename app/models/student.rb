class Student
  attr_reader :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    all.find {|student| student.first_name = first_name}
  end

  def student_tests
    BoatingTest.all.select {|test| test.student == self}
  end

  def grade_percentage
    grades = student_tests.map {|test| test.test_status}
    grades.count('passed').to_f / grades.count.to_f
  end

end
