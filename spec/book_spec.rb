require_relative '../book'
require_relative '../person'


person = Person.new(20, 'Bashir')

describe Book do
  context 'Unit testing for Book class' do
    it 'rent method need to add the current book to the rentals list' do
      book = Book.new('Harry Potter', 'Rowling')
      book.rent('12-12-2012', person)
      expect(book.rentals.length).to be 1
    end
  end
end
