puts "Hello! What's your name?"

name = gets.chomp

puts "Hello, #{name}. Would you like to play a game?"

answer = gets.chomp

if answer.downcase == 'no' 
  puts "Fine. I didn't want to play with you anyway."
  return "Jerk."
end

correctAnswer = rand(10) + 1
success = false

puts "I'm thinking of a number between 1 and 10. "
3.times do
  puts 'take a guess'
  response = gets.chomp

  if response.to_i === correctAnswer
    puts 'you got it'
    success = true
    exit
  else
    puts 'nope!'
  end
end

if success == false
  puts 'Strike 3! You are out!'
  puts "The correct answer was #{correctAnswer}"
end


