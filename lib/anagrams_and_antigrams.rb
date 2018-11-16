class String
  def word_entry
    inputted_words = self
    inputted_words.downcase!()
    inputted_words.gsub!(/\s+/, "")
    inputted_words.gsub(/[[:punct:]]/, '')
    return inputted_words
  end
end
