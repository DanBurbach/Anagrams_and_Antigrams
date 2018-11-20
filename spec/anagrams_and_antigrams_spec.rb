require('rspec')
require('anagrams_and_antigrams.rb')
require('pry')


describe 'Anagram_Test' do
  context "when called on two anagrams" do
    it "returns true" do
      expect Anagram_Test.input_words?("cat", "tac") == "These words are anagrams."
    end
  end

  context "when called on antigrams" do
    it "returns false" do
      expect Anagram_Test.input_words?("cat", "dog") == "These words are antigrams and are not anagrams."
    end
  end

  context "spaces and punctuation removed" do
    it "returns ClintEastwood OldWestAction" do
      expect Anagram_Test.input_words?("Clint Eastwood!", "Old West Action!!") == "ClintEastwood OldWestAction"
    end
  end

  context "when called on words that have numbers and or no vowels" do
    it "returns This isn't a valid entry, please enter an actual word or words!!" do
      expect Anagram_Test.input_words?("grt", "h3ll0") == "This isn't a valid entry, please enter an actual word or words!!"
    end
  end

  context "sets letters to lowercase for comparison" do
    it "returns ClintEastwood OldWestAction" do
      expect Anagram_Test.input_words?("Clint Eastwood!", "Old West Action!!") == "clinteastwood oldwestaction"
    end
  end
end

#Clint Eastwood! = Old West action!
#clinteastwood = oldwestaction
