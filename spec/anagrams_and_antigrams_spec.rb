require('rspec')
require('anagrams_and_antigrams.rb')
require('pry')


describe '#word_entry' do
  it("turns all letters in a phrase to lower case and removes all spaces and punctuation") do
    expect("Clint Eastwood!".word_entry).to eql("clinteastwood")
  end
  it("returns a false if any numbers found") do
    expect("Clint1234 Eastwood!".word_entry).to eql("Please no numbers in the words!")
  end
end
#Clint Eastwood! = Old West action!
#clinteastwood = oldwestaction
