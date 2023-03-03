require './student'
require './classroom'
require './person'

math = Classroom.new('Math')
student = Student.new(25, 'John', true)

describe Student do
  context 'Testing for Student class' do
    it 'the play_hooky should return ¯\(ツ)/¯' do
      expect(student.play_hooky).to eq '¯\(ツ)/¯'
    end

    it 'the add_classroom should add the class to students ' do
      student.add_classroom(math)
      expect(student.classroom).to eq math
    end
  end
end
