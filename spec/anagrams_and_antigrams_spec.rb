require('rspec')
require('anagrams_and_antigrams.rb')
require('pry')


describe '#word_entry' do
  it("turns all letters in a phrase to lower case") do
    expect("Clint Eastwood".word_entry).to eql("clint eastwood")
  end
end
#Clint Eastwood = Old West action
