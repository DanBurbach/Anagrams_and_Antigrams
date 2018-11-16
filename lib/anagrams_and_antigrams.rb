class String
  def word_entry
    inputted_words = self
    inputted_words.downcase!()
    #binding.pry
    inputted_words.gsub!(/\s+/, "")
    #binding.pry
    return inputted_words
  end
end
