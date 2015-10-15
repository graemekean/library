require 'pry-byebug'

require_relative 'library'
require_relative 'book'
require_relative 'person'

require_relative 'methods'


library = Library.new name: "Codeclan Library"

library.add_person(Person.new(name: 'Fred'))
library.add_person(Person.new(name: 'Wilma'))
library.add_person(Person.new(name: 'Barney'))
library.add_person(Person.new(name: 'Betty'))
library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))

response = menu

while response != 0
  case response
  when 1
    create_book(library)
  when 2
    create_person(library)
  when 3
    list_all_books(library)
  when 4
    list_all_people(library)
  when 5
    lend_book(library)
  when 6
    return_book(library)
  when 7
    # list_borrowed_books
  else
    puts "Invalid option"
end


  puts "Press Enter to continue"
  gets
  response = menu

end





binding.pry;''