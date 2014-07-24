def poker_hand(cards)
  array_numbers = []
  array_suites = []
  cards.each do |card|
    array_numbers << card[0..-2].to_i
  end
  cards.each do |card|
    array_suites << card.slice(-1)
  end


  sorted_cards = array_numbers.sort


  counter = 0
  sorted_cards.each do |string|
    counter += string
  end
  if sorted_cards[0]==10 && sorted_cards.each_cons(2).all? { |a,b| a + 1 ==b } && array_suites.uniq.length ==1
    return "royal flush"
  elsif sorted_cards.each_cons(2).all? { |a,b| a + 1 ==b } && array_suites.uniq.length ==1
    return "straight flush"
  elsif array_suites.uniq.length == 1
    return "flush"
  elsif sorted_cards.each_cons(2).all? { |a,b| a + 1 ==b }
    return "straight"
  end

  unique_numbers = array_numbers.uniq
  if unique_numbers.size == 4
    "pair"
  elsif unique_numbers.size == 3
    unique_numbers.each do |number|
      if array_numbers.count(number) == 3
        return "three of a kind"
      elsif array_numbers.count(number) ==2
        return "two pairs"
    end
  end
  elsif unique_numbers.size == 2
    unique_numbers.each do |number|
      if array_numbers.count(number) == 3
        return "full house"
      elsif array_numbers.count(number) == 4
        return "four of a kind"
      end
    end
  end
end

p poker_hand(['3S', '4S', '5S', '6S', '7S'])




