# In the input_students method the cohort value is hard-coded. 
#How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value?
#The input will be given to you as a string? 
#How will you convert it to a symbol? What if the user makes a typo?

def input_students
  puts "Please enter the names of the students"
  name = gets.chomp
  puts "Please enter the month of entry"
  cohort = gets.chomp
  cohort ="january" if cohort.empty?
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  print "Name: "
  name = gets.chomp
  if name == ""
     name = "N/A"
  end
  # get the first name


  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_list(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
print_list(students)
print_footer(students)