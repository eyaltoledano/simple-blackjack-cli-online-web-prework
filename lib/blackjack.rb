def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  dealt_card = rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  cards = card1 + card2
  display_card_total(cards)
  cards
end

def hit?(current_total)
  prompt_user # Type h or s
  answer = get_user_input # get the input and store it into 'answer'
  if answer == 'h'
    current_total = current_total + deal_card
  elsif answer == 's'
    current_total
  else
    invalid_command
    prompt_user
  end
  current_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cards = initial_round

  until cards > 21
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
