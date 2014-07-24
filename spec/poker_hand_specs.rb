require('rspec')
require('poker_hand')

describe("poker_hand") do
  it('recognizes when a pair of the same numbered cards are present in the array') do
    expect(poker_hand(['2S', '4D', '4H', '3C', '8D'])).to eq("pair")
  end
  it('finds three of a kind in the array') do
    expect(poker_hand(['2S', '5S', '5D', '5H', '10S'])).to eq("three of a kind")
  end
end
