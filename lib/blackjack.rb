def welcome
  # code #welcome helper_method
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(num_of_cards)
  # code #display_card_total here
  puts "Your cards add up to #{num_of_cards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(lost)
  # code #end_game here
  puts "Sorry, you hit #{lost}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  num_of_cards = first_card + second_card
  display_card_total(num_of_cards)
  return num_of_cards 
end

def hit?(a_card)
  prompt_user
  gamble = get_user_input
  if gamble == 'h'
    a_card += deal_card
  elsif gamble == 's'
    a_card
  else
    invalid_command
  end
    
  # code hit? here
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total_cards = initial_round
  until total_cards > 21
    total_cards = hit?(total_cards)
    display_card_total(total_cards)
  end
   end_game(total_cards)
end
    
