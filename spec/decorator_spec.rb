require_relative '../decorator/base_decorator'
require_relative '../person'
require_relative '../decorator/capitalize_decorator'
require_relative '../decorator/trimmer_decorator'
describe Decorate do
  context 'Testing the decorator class' do
    it 'Should return the name of the person' do
      person = Person.new(42, 'Riyana')
      expect(person.correct_name).to eql 'Riyana'
    end

    it 'Should capitalize the name of the person' do
      person = Person.new(42, 'Riyana')
      capitalize = CapitalizeDecorator.new(person)
      expect(capitalize.correct_name).to eql 'Riyana'
    end

    it 'Should trim the name of the person to 10 characters' do
      person = Person.new(42, 'alexzanderomar')
      trimmer = TrimmerDecorator.new(person)
      expect(trimmer.correct_name).to eql 'alexzander'
    end
  end
end
