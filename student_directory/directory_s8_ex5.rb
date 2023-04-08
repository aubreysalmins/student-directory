def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # prompt the user for additional information
    puts "Enter #{name}'s hobbies:"
    hobbies = gets.chomp
    puts "Enter #{name}'s country of birth:"
    country_of_birth = gets.chomp
    puts "Enter #{name}'s height (in cm):"
    height = gets.chomp.to_i
    # add the student hash to the array
    students << {name: name, cohort: :november, hobbies: hobbies, country_of_birth: country_of_birth, height: height}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Enter another student's name:"
    name = gets.chomp 
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort), hobbies: #{student[:hobbies]}, country of birth: #{student[:country_of_birth]}, height: #{student[:height]}cm"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)