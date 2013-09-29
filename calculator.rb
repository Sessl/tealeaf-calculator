def computersays
num_array =[]
puts 'Please enter the first number'
num_array << gets.chomp
puts 'Please enter the second number'
num_array << gets.chomp
puts 'What would you like to do?'
puts 'Add, Subtract, Divide, Multiply, Square Each Number or find the Remainder?'
num_array << gets.chomp.downcase.gsub(/\s+/,"")
return num_array
end

choice = []
choice = computersays


if choice[2] == 'add'
  puts "Addition of #{choice[0]} and #{choice[1]} gives: " + (choice[0].to_f + choice[1].to_f).to_s
elsif choice[2] == 'subtract'
  puts "Subtraction of #{choice[1]} from #{choice[0]} gives: " + (choice[0].to_f - choice[1].to_f).to_s
elsif choice[2] == 'divide'
  puts "Division of #{choice[0]} by #{choice[1]} gives: " + (choice[0].to_f/choice[1].to_f).to_s
elsif choice[2] == 'multiply'
  puts "Multiplication of #{choice[0]} by #{choice[1]} gives: " + (choice[0].to_f*choice[1].to_f).to_s
elsif choice[2] == 'squareeachnumber'
  puts "Squaring #{choice[0]} gives: " + (choice[0].to_f**2).to_s
  puts "Squaring #{choice[1]} gives: " + (choice[1].to_f**2).to_s
elsif choice[2] == 'remainder'
  puts "Remainder of #{choice[0]} divided by #{choice[1]} is: " + (choice[0].to_f.remainder(choice[1].to_f)).to_s
end
