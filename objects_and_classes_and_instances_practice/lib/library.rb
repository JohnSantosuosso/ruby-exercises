class Library
  attr_reader :collection, :author, :title, :genre #reads array

  def initialize() #initializes collection array to store books
    @collection = []
  end

  def add_book(book) #adds book to collection array
    @collection << book
  end

  def return_titles #returns the titles of books stored in the collection
    @collection.each { |books| puts "#{books.title}" }
    end

  def return_authors #returns the authors of books stored in the collection unless duplicates exist
      @collection.each { |books| puts "#{books.author}" } #need to add other part of challenge--restricting it so duplicates don't appear in results
  end

  end
