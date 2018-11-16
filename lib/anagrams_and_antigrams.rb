class String
  def word_entry
    inputted_words = self
      inputted_words.downcase!()
      inputted_words.gsub!(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
      inputted_words.gsub!(/\s+/, "")

      return inputted_words
    def word_error
      if self.(/\d/)
        return "Please no numbers in the words!"
      end
      #elsif (self.(/\d/))
      #  puts "This isn't a valid entry, please enter an #actual word or words!!"
      #end
    end
  end
end
