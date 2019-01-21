def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  $card_total = rand(1..11)
  return $card_total
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

require "pry"
def initial_round
  card_total = 0
card_total = deal_card + deal_card
display_card_total(card_total)
binding.pry
return card_total
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input 
if user_input == 'h'
    card_total = current_card_total + deal_card
    display_card_total(card_total)
    return card_total
elsif user_input == 's'
  card_total = current_card_total
else
    invalid_command
    prompt_user
end
end

def invalid_command
  puts "Please enter a valid command."
end


def runner
welcome
card_total = initial_round 
until card_total >= 21
    card_total = hit?(card_total)
    return card_total
end
end_game(card_total)
end
    
