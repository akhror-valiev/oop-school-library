require './book'
require './person'

parent = Person.new(30, 'John')
child = Person.new(24, 'Doe')

describe Person do
  context 'Testing for Person class' do
    it 'the age method should return true if  age > 18' do
      expect(child.can_use_services?).to be true
    end

    it 'the can_use_services method should check the permission' do
      expect(parent.can_use_services?).to be true
    end

    it 'The correct_name method should return person name' do
      expect(parent.correct_name).to eq 'John'
    end
  end
end
