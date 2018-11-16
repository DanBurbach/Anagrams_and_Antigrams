class String
  def word_entry
    inputted_words = self
    inputted_words.downcase!()
    inputted_words.gsub!(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
    #binding.pry
    inputted_words.gsub!(/\s+/, "")
    #binding.pry
    #if (self.(/\d/))
    #  puts "Please no numbers in the words!"
    #end
    return inputted_words
  end
end
