# Write a program called age.rb that asks a user how old they are and then tells 
# them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

puts "How old are you?"

age = gets.chomp
age = age.to_i

listAges = [10, 20, 30, 40]

listAges.each{ |number| puts "In #{number} you will be:", age + number }