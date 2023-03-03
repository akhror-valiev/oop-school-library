require './book'
require './person'

person = Person.new(20, 'Usher')

describe Book do
  context 'Testing for Book class' do
    it 'the rent method should add the current book to rentals' do
      book = Book.new('Harry Potter', 'Rowling')
      book.rent('12-12-2012', person)
      expect(book.rentals.length).to eq 1
    end
  end
end
