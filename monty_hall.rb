# This a simulation of the Monty Hall problem

# run a number of experiments
# using random car door
# and choose between 2 strategies - stay, or switch

Random.seed

doors = [1,2,3]

def choose_a_door
  Random.rand(3) + 1
end

number_tests = 10

stay_wins = 0
switch_wins = 0

number_tests.times do |i|

  car_door = choose_a_door
  you_chose = choose_a_door
  show_door = (doors - [car_door, you_chose]).sample

  result = "You chose door #{you_chose}, Monty Hall showed door #{show_door}, the car was behind door #{car_door}. "
  if car_door == you_chose
    stay_wins += 1
    result += "Staying wins."
  else
    switch_wins += 1
    result += "Swithing wins."
  end

  result += " (Stay total=#{stay_wins}, Switch total=#{switch_wins}."
  puts result
end



