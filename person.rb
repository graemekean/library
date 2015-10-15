class Person

  attr_reader :name, :books

  def initialize(options={})
    @name = options[:name]
    @books = {}
  end

  def pretty_people
    "#{name} has #{books.size} book(s) borrowed from the library"

  end

  def borrow(book)
    books[book.title] = book
  end


  def return(book)
    
    books.delete(book.title)
  end

  def display_books(person_returning)
    if books.empty?
      "User has no books on loan"
    else
      books.map {|key, person| book.pretty_books}.join("\n")
    end
  end



end