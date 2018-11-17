class Anagram
  def user_entries(word1,word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram_filter
    user_entries = [@word1, @word2]
    x = @word1.chars.to_a.sort
    y = @word2.chars.to_a.sort
    if user_entries.gsub(/[\d]/)&&user_entries.gsub(/[a,e,i,o,u,y]/)
    binding.pry
      return "This isn't a valid entry, please enter an actual word or words!!"
    else
      user_entries.downcase!()
      user_entries.gsub!(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
      user_entries.gsub!(/\s+/, "")
    binding.pry
      split_words = inputted_words.chars.to_a

      if (x == y) == true
        return "These words are anagrams"
      else
        return "These words are antigrams"
      end
    end
  end
end
