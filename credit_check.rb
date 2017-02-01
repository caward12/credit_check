require 'pry'
puts 'Please enter credit card number:'
orig_card_number = gets.chomp

valid = false

card_number2 = orig_card_number.split('')

card_reverse = card_number2.reverse

card_reverse.map! { |i| i.to_i }

card_reverse.each_with_index do |number, index|
  if index.odd?
    card_reverse[index] *= 2
      if card_reverse[index] >= 10
        card_reverse[index] -= 9
      end
  end
end

sum = 0
card_reverse.each { |number| sum += number }

#card_reverse.reduce(:+)

# valid = sum % 10 == 0
if sum % 10 == 0
  valid = true
else
  valid = false
end

if valid
  puts 'The number is valid!'
else
  puts 'The number is not valid.'
end

binding.pry
" "
