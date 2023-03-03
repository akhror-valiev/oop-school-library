require './classroom'
require './student'

RSpec.describe ClassRoom do
  let(:classroom) { ClassRoom.new('Classroom A') }
  let(:student) { Student.new(classroom, 18, 'Emmanuel Simasiku') }

  describe '#add_student' do
    it 'adds a student to the classroom' do
      classroom.add_student(student)
      expect(classroom.students).to include(student)
    end

    it 'sets the student\'s classroom to the current classroom' do
      expect(student.classroom).to eq(classroom)
    end
  end
end
