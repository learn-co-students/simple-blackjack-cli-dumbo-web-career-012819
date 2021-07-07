def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card

  display_card_total(first_card + second_card)
  return first_card + second_card
end

def hit?(card_total)
  prompt_user
  input = get_user_input

  if input == "h"
    return card_total + deal_card
  elsif input == "s"
    return card_total
  else
    invalid_command(card_total)
  end
end

def invalid_command(card_total)
  puts "Invalid Command"
  hit?(card_total)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round

  until card_sum > 21 do
    current_sum = hit?(card_sum)
    display_card_total(current_sum)

    card_sum = current_sum
  end

  end_game(card_sum)
end
