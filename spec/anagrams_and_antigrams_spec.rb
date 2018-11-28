require('rspec')
require('anagrams_and_antigrams.rb')
require('pry')


describe 'AnagramTest' do
  context "when called on two anagrams" do
    it "returns positive" do
      words = AnagramTest.new("cat", "tac")
    expect(words.anagram_filter()).to(eq("These words are anagrams."))
    end
  end

   context "when accounting for words that may have different cases" do
     it "returns positive regardless of being capitalized" do
       words = AnagramTest.new("Tea", "Eat")
       expect(words.anagram_filter()).to(eq("These words are anagrams."))
     end
   end

  # context "check if inputs are actual words" do
    # it "returns a negative if there are no vowels or if there are numbers in the words" do
      # words = AnagramTest.new("Cl1nt E4stw00d!", "mld Wtrt mctpln!!")
      # expect(words.anagram_filter()).to(eq("This isn't a valid entry, please enter an actual word or words!!"))
    # end
  # end

  # context "check if words are actual antigrams if they are not anagrams" do
    # it "returns a negative if no letters match" do
      # words = AnagramTest.new("hi", "bye")
      # expect(words.anagram_filter()).to(eq("These words are antigrams and are not anagrams."))
    # end
  # end

  # context "Account for multiple words being anagrams" do
    # it "returns a positive for multiple words that match up as anagrams" do
      # words = AnagramTest.new("Clint Eastwood!", "Old West Action!!")
      # expect(words.anagram_filter()).to(eq("These words are anagrams."))
    # end
  # end

  # context "Account for multiple words being antigrams" do
    # it "returns a neative for multiple words that don't match up as antigrams" do
      # words = AnagramTest.new("Nintey-nine red balloons", "Old West Action!!")
      # expect(words.anagram_filter()).to(eq("These words are antigrams and are not anagrams."))
    # end
  # end
end

#Clint Eastwood! = Old West action!
#clinteastwood = oldwestaction
