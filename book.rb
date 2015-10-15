class Book

  attr_reader :title, :genre

  def initialize(options={})
    @title = options[:title]
    @genre = options[:genre]

  end

  def pretty_string
    "#{title}  ----   #{genre}"

  end

  def pretty_books
    "#{title}"
  end



end