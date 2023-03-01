class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book

    @person.rentals.push(self) unless person.rentals.include?(self)
    @book.rentals.push(self) unless book.rentals.include?(self)
  end
end
