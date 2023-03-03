require './book'
require './person'
require './rental'

person = Person.new(25, 'Doe')
book = Book.new('The Red', 'Mark')
rental = Rental.new('2023/01/01', person, book)

describe Rental do
  context 'Testing for Rental class' do
    it 'the person should have the added rental' do
      expect(person.rentals[0]).to eq rental
    end

    it 'the book should have the added rental' do
      expect(book.rentals[0]).to eq rental
    end
  end
end
