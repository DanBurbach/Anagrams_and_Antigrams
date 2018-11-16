class String
  def anagrams
    #if self.gsub(/[\d]/)&&self.gsub(/[a,e,i,o,u,y]/)
    #binding.pry
    #  return "This isn't a valid entry, please enter an actual word or words!!"

    #else
      inputted_words = self
      inputted_words.downcase!()
      inputted_words.gsub!(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
      inputted_words.gsub!(/\s+/, "")
      inputted_words.scan!(/\w/)
      binding.pry
      return inputted_words
    #end
  end
end
