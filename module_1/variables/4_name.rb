# Modify name.rb again so that it first asks the user for their first name, 
# saves it into a variable, and then does the same for the last name. 
# Then outputs their full name all at once.

puts "What is your first name?"

firstName = gets.chomp

puts "What is your last name?"

lastName = gets.chomp

puts "#{firstName} #{lastName}"
