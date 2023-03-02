require './student'
require './classroom'

math = ClassRoom.new('Math')
student = Student.new(24, 'Gulalai', true)

describe Student do
  context 'Unit testing for Student class' do
    it 'the play_hooky should return ¯\(ツ)/¯' do
      expect(student.play_hooky?).to eq '¯\(ツ)/¯'
    end

    it 'the add_classroom should add the class to students ' do
      student.add_classroom(math)
      expect(student.classroom).to eq math
    end
  end
end
