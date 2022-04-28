require './library.rb'
require './book.rb'

book1 = Book.new("To Kill a Mockingbird", "Harper Lee", "Fiction")
book2 = Book.new("The Things They Carried", "Tim O'Brien", "Fiction")
book3 = Book.new("Spiderman", "Stan Lee", "Comic")
book4 = Book.new("X-Men", "Stan Lee", "Comic")

library1 = Library.new

library1.add_book(book1)
library1.add_book(book2)
library1.add_book(book3)
library1.add_book(book4)
library1.return_titles
library1.return_authors

require 'pry'; binding.pry
