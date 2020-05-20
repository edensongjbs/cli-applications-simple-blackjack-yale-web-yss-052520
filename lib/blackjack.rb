def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(10)+1
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  hand_total=0
  2.times {hand_total+=deal_card}
  display_card_total
  hand_total
end

def hit?(current_total)
  # code hit? here
  prompt_user
  loop {
    user_input=get_user_input
    if user_input=="h"
      current_total+=deal_card
      break
    else if user_input=="s"
      break
    else
      invalid_command
      prompt_user
    end
  }
  current_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
