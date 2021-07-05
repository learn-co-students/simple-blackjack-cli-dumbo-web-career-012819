def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1 .. 11)
end

def display_card_total (total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (end_total)
  puts "Sorry, you hit #{end_total}. Thanks for playing!"
end

def initial_round
  initial_total = 0
  initial_total = initial_total + deal_card + deal_card
  display_card_total(initial_total)
  
  initial_total
end

def hit? (total)
  prompt_user
  answer = get_user_input
  
  if answer == "s"
    total
  elsif answer == "h"
    total += deal_card
  else
    invalid_command
    prompt_user
    total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
  
  end_game(hand)
end
    
