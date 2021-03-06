#Modify your program to only print the students whose name begins with a specific letter.

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print(students, letter)
  students.each_with_index do |student, index|
    new_index = index + 1
    #students.select { |name| name.start_with?('a')
    #check the student name and print
    letters = student[:name].split('') 
    if letters[0] == letter.downcase
      puts "#{new_index}. #{student[:name]} (#{student[:cohort]} cohort)"
    else
    end
end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
#print(students)
print_footer(students)
print(students, "S")

