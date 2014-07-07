require 'date'
puts "What's your name?"
name = gets.chomp
if name.empty?
  puts "You must enter your name!"
  exit
end

puts "Your name is #{name}"
name.each_char do |char|
  if(char =~ /[aefhilmnorsxAEFHILMNORSX]/)
    puts "Give me an... #{char}"
  else
    puts "Give me a... #{char}"
  end
end

puts "Hey," +  " " + name + "," + " " + "what's your birthday?"
puts "ex: 6th Oct 1990"

birthday = gets.chomp
date = Date.parse(birthday)
t = Date.today
today = Date.new(t.year, t.month, t.day)
bdate = Date.new(today.year, date.month, date.day)

puts "#{today}"
puts "#{bdate}"

  if(bdate.mjd <= today.mjd)
    bdate = Date.new(today.year + 1, date.month, date.day)
    puts "#{bdate}"
  else
    bdate = Date.new(today.year, date.month, date.day)
end

diff = (bdate - today).to_i

puts "Awesome! Your birthday is in #{diff} days! Happy Birthday in advance!"
