require_relative "wagon_sort"

students = []

loop do
  puts "Type a student name:"
  name = gets.chomp

  break if name.empty?

  students << name
end

sorted_students = wagon_sort(students)

if sorted_students.size == 1
  puts "Congratulations! Your Wagon has 1 student:\n#{sorted_students.first}"
else
  last_two = sorted_students.pop(2)
  formatted_list = "#{sorted_students.join(', ')}, #{last_two.join(' and ')}"
  puts "Congratulations! Your wagon has #{students.size} students:\n#{formatted_list}"
end
