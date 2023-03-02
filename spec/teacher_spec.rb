require './teacher'
require './student'
teacher = Teacher.new(24, 'Mohammad', true)

describe Student do
  context 'Unit testing for Student class' do
    it 'the can_use_services? always should return true ' do
      expect(teacher.can_use_services?).to be true
    end
  end
end
