require './book'
require './person'
require './rental'

person = Person.new(20, 'Sample')
book = Book.new('Th Red', 'Mark')
rental = Rental.new('2000/01/01', person, book)

describe Rental do
  context 'Unit testing for Rental Class' do
    it 'The person should have the added rentals list' do
      expect(person.rentals[0]).to eq rental
    end

    it 'The book should have the added rentals list' do
      expect(book.rentals[0]).to eq rental
    end
  end
end
