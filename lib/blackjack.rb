def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
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
  card_one = deal_card
  card_two = deal_card
  hand = card_one + card_two
  display_card_total(hand)
  hand
end

def hit?(hand)
  prompt_user
  if get_user_input == 'h'
    new_card = deal_card
    return hand + new_card
  elsif get_user_input = 's'
    return hand
  else 
    return invalid_command
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
  starting_hand = initial_round
  hand = hit?(starting_hand)
  display_card_total(hand)
  if hand <= 21
    hit?(hand)
    display_card_total(hand)
  else
  end_game(hand)
  end
end
    
