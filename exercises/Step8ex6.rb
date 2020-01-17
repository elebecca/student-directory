#Research how the method center() of the String class works.
#Use it in your code to make the output beautifully aligned.

def input_students
  puts "Please enter the student's name, country of birth, height and hobbies: "
  puts "To finish, type enter 5 times."
  #create an empty array
  students = []
  print "Name: "
  name = gets.chomp
  print "Country of Birth: "
  country_of_birth = gets.chomp
  print "Height : "
  height = gets.chomp
  print "Hobbies: "
  hobbies = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november, country_of_birth: country_of_birth, height: height, hobbies: hobbies}
    puts "Now we have #{students.count} students"
    #get another name from the user
    print "Name: "
    name = gets.chomp
    print "Country of Birth: "
    country_of_birth = gets.chomp
    print "Height (cm): "
    height = gets.chomp
    print "Hobbies: "
    hobbies = gets.chomp
  end
  #return the array of students
  students
end

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def prints(students)
students.each do |student|
  puts "#{student[:name]}".center(100)
  puts "(#{student[:cohort]} cohort)".center(30)
  puts "Country of Birth: #{student[:country_of_birth]}".center(30)
  puts "Height: #{student[:height]}".center(30)
  puts "Hobbies: #{student[:hobbies]}".center(30)
end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

#nothing happens until we call the methods
students = input_students
print_header
prints(students)
print_footer(students)