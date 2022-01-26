class Book
  attr_accessor :title, :author
  attr_reader :rentals

  @@all_books = []
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    @@all_books << self
  end

  def add_rental(rental)
    @rentals << rental
    rental.book = self
  end

  def self.all_books
    @@all_books
  end
end
