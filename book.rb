require './all_books'
class Book
  attr_accessor :title, :author
  attr_reader :rentals

  ALL_BOOKS = AllBooks.new
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    ALL_BOOKS.all_books << self
  end

  def add_rental(rental)
    @rentals << rental
    rental.book = self
  end

  def self.all_books
    @@all_books
  end
end
