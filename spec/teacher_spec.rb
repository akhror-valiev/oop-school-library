require './teacher'
require './student'
require './person'

teacher = Teacher.new(25, 'Lucky')

describe Student do
  context 'Testing for Teacher class' do
    it 'the can_use_services? always should return true ' do
      expect(teacher.can_use_services?).to be true
    end
  end
end
