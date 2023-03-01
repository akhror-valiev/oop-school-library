require './rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def rent(date, person)
    @rentals.push(Rental.new(date, self, person))
  end
end
