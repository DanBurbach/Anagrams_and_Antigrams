require('rspec')
require('anagrams_and_antigrams.rb')
require('pry')


describe '#word_entry' do
  it("turns all letters in a phrase to lower case and removes all spaces") do
    expect("Clint Eastwood!".word_entry).to eql("clinteastwood!")
  end
end
#Clint Eastwood = Old West action
