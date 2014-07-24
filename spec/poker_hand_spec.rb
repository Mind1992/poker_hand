require('rspec')
require('poker_hand')

describe("poker_hand") do
  it('recognizes when a pair of the same numbered cards are present in the array') do
    expect(poker_hand(['2S', '4D', '4H', '3C', '8D'])).to eq("pair")
  end

  it('finds three of a kind in the array') do
    expect(poker_hand(['2S', '5S', '5D', '5H', '10S'])).to eq("three of a kind")
  end

  it('finds four of a kind in the array') do
    expect(poker_hand(['2S', '5S', '5D', '5H', '5S'])).to eq("four of a kind")
  end

  it('finds two pairs in the array') do
    expect(poker_hand(['2S', '5S', '10D', '2H', '10S'])).to eq("two pairs")
  end

  it('finds a full house') do
    expect(poker_hand(['2S', '5S', '5D', '2H', '5S'])).to eq("full house")
  end

  it('finds a straight') do
    expect(poker_hand(['2S', '3S', '4D', '5H', '6S'])).to eq("straight")
  end

  it('finds a flush') do
    expect(poker_hand(['2S','3S','4S','9S','10S'])).to eq("flush")
  end

  it('finds a straight flush') do
    expect(poker_hand(['2S','3S','4S','5S','6S'])).to eq("straight flush")
  end

  it('finds a royal flush') do
    expect(poker_hand(['10S','11S','12S','13S','14S'])).to eq("royal flush")
  end

  it('allows A to be 1 or 14') do
    expect(poker_hand(['1S','2S','3S','4S','5S'])).to eq("straight flush")
  end
end

