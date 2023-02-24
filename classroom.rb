class Classroom
  attr_accessor :label
  attr_reader :student

  def initialize(label)
    @label = label
    @students = []
  end

  def add_students(student)
    @students.push(student) unless students.include?(student)
    student.classroom = self
  end
end
