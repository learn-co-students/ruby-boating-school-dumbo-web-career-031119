require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rose = Student.new("Rose")
billy = Student.new("Billy")

jack = Instructor.new("Jack")

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

titanic_rose = rose.add_boating_test("Titanic", "failed", jack)
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

p jack.pass_student(rose, "Titanic")

p jack.fail_student(billy, "Titanic")

binding.pry
0
