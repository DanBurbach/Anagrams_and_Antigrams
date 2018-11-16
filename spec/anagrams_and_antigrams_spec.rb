require('rspec')
require('anagrams_and_antigrams.rb')
require('pry')


describe '#word_entry' do
  #it("changes letters in a phrase to lower case and removes all #spaces and punctuation") do
  #  expect("Clint Eastwood!".word_entry).to eql("clinteastwood")
  #end
  it("when any numbers found or no vowels found") do
    expect("ytrvb123".word_entry).to eql("This isn't a valid entry, please enter an actual word or words!!")
  end
end
#Clint Eastwood! = Old West action!
#clinteastwood = oldwestaction
