require('rspec')
require('anagrams_and_antigrams.rb')
require('pry')


describe '#anagrams' do
  it("changes letters in a phrase to lower case and removes all spaces and punctuation and then turns into an array of letterss") do
    expect("Clint Eastwood!".anagrams).to eql(["c","l","i","n","t","e","a","s","t","w","o","o","d"])
  end
  #it("when any numbers found or no vowels found") do
  #  expect("ytrvb123".anagrams).to eql("This isn't a valid entry, please enter an actual word or words!!")
  #end
end
#Clint Eastwood! = Old West action!
#clinteastwood = oldwestaction
