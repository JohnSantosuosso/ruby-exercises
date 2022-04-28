class Book
attr_reader :title, :author, :genre #reads attributes from book object

  def initialize (title, author, genre) #creates new book object
    @title = title
    @author = author
    @genre = genre
  end

end
