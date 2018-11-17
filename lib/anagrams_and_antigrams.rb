class Anagram
  def user_entries(word1,word2)
    @word1 = word1
    @word2 = word2
  end

  def word1
    word1 = Anagram.new("cat")
  end

  def word2
    word2 = Anagram.new("tac")
  end

  def anagram_filter
    user_entries = [word1, word2]
    if user_entries.gsub(/[\d]/)&&user_entries.gsub(/[a,e,i,o,u,y]/)
    binding.pry
      return "This isn't a valid entry, please enter an actual word or words!!"
    else
      user_entries.downcase!()
      user_entries.gsub!(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
      user_entries.gsub!(/\s+/, "")
    binding.pry
      split_words = inputted_words.chars.to_a
      if (word1.chars.to_a.sort == word1.chars.to_a.sort) = true
        return "These words are anagrams"
      else (word1.chars.to_a.sort == word1.chars.to_a.sort) = false
        return "These words are antigrams"
    end
  end
end
