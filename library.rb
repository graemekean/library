class Library

  attr_reader :name, :books, :people

  def initialize(options={})
    @name = options[:name]
    @books ={}
    @people = {}
  end

  def add_book(book)
    @books[book.title] = book
  end

  def add_person(person)
    @people[person.name] = person
  end

  def list_people
    if people.empty?
      "No people here"
    else
      people.map {|key, person| person.pretty_people}.join("\n")
    end
  end

  def lend(person_name, book_title)
    person = people[person_name]
    book = books.delete(book_title)

    person.borrow(book)
  end

  def return(person, returned_book)
    person = people[person]
    book = person.books[returned_book]
    add_book(book)

    person.return(book)
  end


  def get_person(name_string)
    people[name_string]
  end

  def show_person_books(person_returning)
    people[person_returning]
  end

  def list_books
    if books.empty?
      "Sorry, there are no books"
    else
      books.map {|key, book| book.pretty_string}.join("\n")
     
    end
  end

end