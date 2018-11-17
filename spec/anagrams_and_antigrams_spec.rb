require('rspec')
require('anagrams_and_antigrams.rb')
require('pry')


describe '#anagram_filter' do
  it("is an anagram") do
    expect("cat".anagram_filter).to eql("tac")
  end
  it("is an antigram when no letters match") do
    expect("cat".anagram_filter).to eql("bob")
  end
  it("when any numbers found or no vowels found") do
    expect("ytrvb123".anagram_filter).to eql("This isn't a valid entry, please enter an actual word or words!!")
  end
  it("spaces and punctuation removed along with lower case and creating an array") do
    expect("Clint Eastwood!".anagram_filter).to eql(["c","l","i","n","t","e","a","s","t","w","o","o","d"])
  end
end
#Clint Eastwood! = Old West action!
#clinteastwood = oldwestaction
