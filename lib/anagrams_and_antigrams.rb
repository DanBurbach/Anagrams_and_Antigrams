class Anagram
  def user_entries(word1, word2)
    @word1 = word1
    @word2 = word2
  end
  def word1
    @word1
  end
  def word2
    @word2
  end
  def anagram_filter
    user_entries = [@word1, @word2]
    array_word1 = @word1.chars.to_a.sort
    array_word2 = @word2.chars.to_a.sort
    if user_entries.gsub(/[\d]/)&&user_entries.gsub(/[a,e,i,o,u,y]/)
      return "This isn't a valid entry, please enter an actual word or words!!"
    else
      user_entries.downcase!()
      user_entries.gsub!(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
      user_entries.gsub!(/\s+/, "")
      split_words = inputted_words.chars.to_a
      if (array_word1 == array_word2) == true
        return "These words are anagrams"
      else
        return "These words are antigrams"
      end
    end
  end
end
