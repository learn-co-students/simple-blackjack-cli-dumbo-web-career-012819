require 'pry'


def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
    end

card_total = deal_card 

def display_card_total(card_total)
  
  card_total == deal_card 
  puts "Your cards add up to #{card_total}"
  
  end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  card_total >= 21
  puts "Sorry, you hit #{card_total}. Thanks for playing!"

end 


def initial_round
  2.times do
    deal_card
     end
  card_total = deal_card + deal_card 
  display_card_total(card_total)
  return card_total
    end

 
def hit?(num)
  card_total = num + deal_card  
  num >= 0 
  if num < 21 
    prompt_user
    get_user_input
   end
    if get_user_input = "h"
      deal_card
      card_total = num + deal_card
      return card_total
    elsif get_user_input = "s"
     num + 0
     return num
     else 
     invalid_command
   end 
     if num > 21
     end_game
  end

def invalid_command
  puts "Please enter a valid command code" 
end


def runner
  welcome
  initial_round
  hit?(4)

end
    
