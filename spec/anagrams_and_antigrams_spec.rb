require('rspec')
require('anagrams_and_antigrams.rb')
require('pry')


describe '#anagram_filter' do
  context "when called on anagrams" do
    it "should return: These words are anagrams." do
        input_words = Anagram_Test.new("cat", "tac")
      expect(input_words.anagram_filter).to eql "These words are anagrams."
    end
  end
end
#
#describe '#anagram_filter' do
#  context "when called on antigrams" do
#    it "should return: These words are antigrams and are not anagrams." do
#      input_words = Anagram_Test.new("cat", "dog")
#      expect(input_words.anagram_filter).to eql "These words are antigrams and are not anagrams."
#    end
#  end
#end
#
#describe '#anagram_filter' do
#  context "when called on words that have numbers and or no vowels" do
#    it "should return: This isn't a valid entry, please enter an actual word or words!!" do
#      input_words = Anagram_Test.new("grt", "h3ll0")
#      expect(input_words.anagram_filter).to eql "This isn't a valid entry, please enter an actual word or words!!"
#    end
#  end
#end
#
#describe '#anagram_filter' do
#  context "spaces and punctuation removed" do
#    it "should return: ClintEastwood OldWestAction" do
#      input_words = Anagram_Test.new("Clint Eastwood!", "Old West Action!!")
#      expect(input_words.anagram_filter).to eql "ClintEastwood OldWestAction")
#    end
#  end
#end

#describe '#anagram_filter' do
#  context "sets letters to lowercase and creates an array" do
#    it "should return: ["c","l","i","n","t","e","a","s","t","w","o","o","d" "o","l","d","w","e","s","t","a","c","t","i","o","n"]" ) do
#      input_words = Anagram_Test.new("Clint Eastwood!", "Old West Action!")
#      expect(input_words.anagram_filter).to eql "["c","l","i","n","t","e","a","s","t","w","o","o","d" #"o","l","d","w","e","s","t","a","c","t","i","o","n"]")
#    end
#  end
#end

#Clint Eastwood! = Old West action!
#clinteastwood = oldwestaction
