class AllBooks
  attr_accessor :all_books

  def initialize
    @all_books = []
  end

  def list_all_books
    @all_books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
    sleep 2
  end
end
