#We're using the each() method to iterate over an array of students.
#How can you modify the program to print a number before the name of each student,
#e.g. "1. Dr. Hannibal Lecter"? Hint: look into each_with_index()

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

# using the each() method to iterate over an array of students
def print(students)
students.each_with_index do |student, index|
    new_index = index + 1
  puts "#{new_index}. #{student[:name]} (#{student[:cohort]} cohort)"
end

end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)