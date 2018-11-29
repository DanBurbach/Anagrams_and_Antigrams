class AnagramTest
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram_filter
    words = @word1, @word2
    vowel_finder = Regexp.new(/[\a,e,i,o,u,y]/)
    number_finder = Regexp.new(/[\d]/)
     if (words.to_s.scan(number_finder).length >=1) || (words.to_s.scan(vowel_finder).length == 0)
       return "This isn't a valid entry, please enter an actual word or words!!"
     else
      lowered_words = words.map(&:downcase)
      punctuation1 = lowered_words[0].gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
      punctuation2 = lowered_words[1].gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')

      array_word1 = punctuation1.gsub(/\s+/, "")
      array_word2 = punctuation2.gsub(/\s+/, "")

      if (array_word1.chars.to_a.sort == array_word2.chars.to_a.sort) && (array_word1.count(array_word1) == array_word2.count(array_word2))
        return "These words are anagrams."

      elsif (array_word1.chars.to_a.sort == array_word2.chars.to_a.sort) && (array_word1.count(array_word1) >= array_word2.count(array_word2)) || (array_word1.count(array_word1) <= array_word2.count(array_word2))
        return "These words are antigrams and are not anagrams."

      else (array_word1.count(array_word1) < array_word2.count(array_word2)) || (array_word1.count(array_word1) > array_word2.count(array_word2))
        return "These are neither anagram nor antigrams"
      end
    end
  end
end
