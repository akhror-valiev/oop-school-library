require './classroom'
require './student'

RSpec.describe Classroom do
  let(:classroom) { Classroom.new('Classroom A') }
  let(:student) { Student.new(classroom, 18, 'Emmanuel Simasiku') }

  describe '#add_student' do
    it 'adds a student to the classroom' do
      classroom.add_students(student)
      expect(classroom.student).to include(student)
    end

    it 'sets the student\'s classroom to the current classroom' do
      expect(student.classroom).to eq(classroom)
    end
  end
end
