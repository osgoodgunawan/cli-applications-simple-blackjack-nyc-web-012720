def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 generate_random_number=rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  value=gets.chomp
end

def end_game(card_total)
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  x=deal_card
  y=deal_card
  num=x+y
  display_card_total(num)
  num
end

def hit?(current_card_total)
  
  prompt_user
  input=get_user_input
  
  if input=='s'
    return current_card_total
  end
  
  if input=='h'
    current_card_total+=deal_card
    return current_card_total
  end
  
  if input !='h'  && input != 's'
    invalid_command
    hit?(current_card_total)
    # prompt_user
    # get_user_input
    # current_card_total
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
  first=initial_round
  second=hit?(first)
  
  display_card_total(second)
  
  end_game(second)
  
end
    
