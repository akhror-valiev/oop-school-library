require './person'

class Student < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky()
    '¯\(ツ)/¯'
  end
  attr_accessor :classroom

  def add_classroom(classroom)
    @classroom = classroom
    classroom.student.push(self) unless classroom.students.include?(self)
  end
end
