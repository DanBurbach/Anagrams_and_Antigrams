require('rspec')
require('anagrams_and_antigrams.rb')
require('pry')


describe '#anagrams_and_antigrams' do
  it("turns a full phrase into an array of letters") do
    expect("Clint Eastwood".anagram_entry).to eql("C","l","i","n","t"," ","E","a","s","t","w","o","o","d")
  end
end
#Clint Eastwood = Old West action
