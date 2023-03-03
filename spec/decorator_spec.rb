require './base_decorate'
require './person'
require './capitalize_decorator'
require './trimmer_decorator'
describe Decorate do
  context 'Testing fro the decorator' do
    it 'Should return the name of the person' do
      person = Person.new(34, 'Merc')
      expect(person.correct_name).to eql 'Merc'
    end

    it 'Should capitalize the name of the person' do
      person = Person.new(34, 'Merc')
      capitalize = CapitalizeDecorator.new(person)
      expect(capitalize.correct_name).to eql 'Merc'
    end

    it 'Should trim the name of the person to 10 characters' do
      person = Person.new(34, 'alexzanderomar')
      trimmer = TrimmerDecorator.new(person)
      expect(trimmer.correct_name).to eql 'alexzander'
    end
  end
end
