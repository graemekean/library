def menu
  puts 'clear'
  puts "*** Hard Copy Rental - Codeclan Library ***"

  puts
  puts
  puts "1. Create Book"
  puts "2. Create Person"
  puts "3. List all Books"
  puts "4. List all people"
  puts "5. Lend Book"
  puts "6. Return Book"
  puts "7. List Borrowed Books"
  puts
  puts "0. Quit"
  puts
  print "--> "
  gets.to_i
end

def create_book(library)
   print "Title: "
   title = gets.chomp

   print "Genre: "
   genre = gets.chomp


   book = Book.new(title: title, genre: genre)
   library.add_book(book)

end

def list_all_books(library)
  puts library.list_books
end

def create_person(library)
  puts "Enter new member name: "
  print "==> "
  name = gets.chomp

  person = Person.new(name: name)
  library.add_person(person)


end

def list_all_people(library)
puts library.list_people
  end

def lend_book(library)
  puts library.list_books
  puts
  puts "Which book do you want to lend? - enter title"
  print "==> "
  book_title = gets.chomp
  puts
  puts library.list_people
  puts "Which person is borrowing the book? - by name"
  print "==> "
  person_name = gets.chomp

  library.lend(person_name, book_title)

end

def return_book(library)
  puts library.list_people
  puts "Which person is returning the book?"
  print "==> "
  person_returning_string = gets.chomp
  person_returning = library.get_person(person_returning_string)
if library.people[person_returning_string].books.empty?
  puts "#{person_returning_string} has no books on loan"

else

  puts "Which book are they returning"
  puts library.people[person_returning_string].books
  puts
  # ----------------------------------------------
  # TODO
  # binding.pry
  # library.people[person_returning_string].display_books(person_returning)


  # borrowed_list = library.people[person_returning_string].books
  # borrowed_list.map {|key, book| book.pretty_string}.join("\n")

  # ------------------------------------------------
  
  puts "Enter the title to be returned:  "
  print "==> "
  book_being_returned_string = gets.chomp
  book_being_returned = library.people[person_returning_string].books[book_being_returned_string]


  library.return(person_returning_string, book_being_returned_string)
end

end










