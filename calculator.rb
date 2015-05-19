puts "which calculator would you like to use? [a]dvanced or [b]asic? bm[i], [m]ortgage, [t]rip "
response = gets.chomp.downcase

if response == 'b'
  puts "Which function would you like to use? [add], [divide], [multiply], [minus]?"
  operation = gets.chomp

  case operation.downcase
  when 'add'
    puts "What is your first number?"
    first_number = gets.chomp.to_i
    puts "What is your second number?"
    second_number = gets.chomp.to_i
    operator = first_number + second_number
    puts "The answer is #{operator}"
  when 'minus'
    puts "What is your first number?"
    first_number = gets.chomp.to_i
    puts "What is your second number?"
    second_number = gets.chomp.to_i
    operator = first_number - second_number
    puts "The answer is #{operator}"
  when 'multiply'
   puts "What is your first number?"
    first_number = gets.chomp.to_i
    puts "What is your second number?"
    second_number = gets.chomp.to_i
    operator = first_number * second_number
    puts "The answer is #{operator}"
  when 'divide'
    puts "What is your first number?"
    first_number = gets.chomp.to_i
    puts "What is your second number?"
    second_number = gets.chomp.to_i
    operator = first_number / second_number
    puts "The answer is #{operator}"

  end

elsif response == 'a'
  puts "Which function would you like to use? [p]ower of or [s]qrt"
  operation = gets.chomp.downcase

  case operation
  when 's' , 'sqrt'
    puts "What number would you like to square?"
    answer = gets.to_i
    final_answer = Math.sqrt(answer)
    puts "The answer is #{final_answer}"
  when 'p', 'power'
    puts "What is your first number?"
    first_number = gets.chomp.to_i
    puts "What is your second number?"
    second_number = gets.chomp.to_i
    operator = first_number ** second_number
    puts "The answer is #{operator}"
  end

elsif response == 'm'
    puts "What is your loan amount (£)?"
    principal = gets.to_i
    puts "How long would you like the loan to last (Term in months)?"
    term = gets.to_i
    puts "What interest rate are you borrowing at?"
    interest_rate = Float(gets.chomp)
    operator = principal * (interest_rate * (1 + interest_rate) ** term) / ((1*interest_rate)** term - 1) / 100.0
    puts "Your monthly payment is #{operator.round(2)}"
  
elsif response == 'i'
     
 

    puts 'Imperial or Metric?'
    measurement = gets.chomp
    if measurement == 'i'
    puts 'What is your weight in lbs?'
    weight = gets.chomp.to_f
    puts 'What is your height in inches? '
    height = gets.chomp.to_f
    puts ((weight/(height**2))*703).to_f
    elsif measurement == 'm'
    puts 'What is your weight in kg?'
    weight = gets.chomp.to_f
    puts 'What is your height in m?'
    height = gets.chomp.to_f
    puts weight/(height**2)
    else
    print 'Error'
    
  end


end

# def get_int_values
#   [gets, gets].map{ |s| s.chomp.to_i}
# end



# def get_int_values
#   [gets, gets].map{ |s| s.chomp.to_i}
# end

# answer = get_int_values.inject(operator)
# puts "THE ANSWER IS .... #{answer}"

# else