require './teacher'
require './student'
teacher = Teacher.new(25, 'Lucky', true)

describe Student do
  context 'Testing Student Class' do
    it 'the can_use_services? always should return true ' do
      expect(teacher.can_use_services?).to be true
    end
  end
end
