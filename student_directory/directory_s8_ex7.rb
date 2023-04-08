def input_students
  puts "Please enter the names and cohorts of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name and cohort
  input = gets.chomp

  months = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december]
  while !input.empty? do
    # split the input into name and cohort
    name, cohort = input.split(',')
    # set default values if either name or cohort are empty
    name = 'Unknown' if name.nil? || name.strip.empty?
    cohort = 'Unknown' if cohort.nil? || cohort.strip.empty?
    # convert the cohort to a symbol
    cohort = cohort.strip.downcase.to_sym
    # check if the cohort is valid
    if !months.include?(cohort)
      puts "Invalid cohort: #{cohort}, please enter a valid month"
      cohort = :unknown
    end
    # add the student hash to the array
    students << {name: name.strip, cohort: cohort}
    puts "Now we have #{students.count} students"
    # get another name and cohort from the user
    input = gets.chomp 
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(50)
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)