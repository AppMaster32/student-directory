@students = []

def fl_txt
  3.times do
  print "\r#{ msg }"
  sleep 0.5
  print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
  sleep 0.5
end
end


def welcome
  puts " "
puts " "
    fl_txt.msg3 = "Welcome to student directory!".center(80)
  

print "Welcome to student directory".center(100)

end


def print_header

  
  p
  print 'The students of my cohort at Makers Academy'.center(100)
  puts '-------------------------------------------'.center(100)
  
end


def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(100)
  end
end

def print_footer  
t = Time.new
print "#{t.strftime ("As of %Y-%m")}, we have#{@students.length} great students".center(100)
 print "=======================================================".center(100)
p     
p          
end

def add_student(name, cohort)
    @students << {:name => name, :cohort => cohort}    
end

def input_students
  p
  p "Please enter the names of the students"
  p "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do    
    # add the student hash to the array
    add_student(name, :august)
    puts "Now we have #{@students.length} students"
    # get another name from the user
    name = gets.chomp
  end
end

def print_menu  

 p 
p
  puts "1. Input the students ".center(100)
  puts "2. Show the students".center(99)
  puts "3. Save the list to students.csv".center(110)
  puts "4. Load the list from students.csv".center(112)
  puts "9. Exit".center(85) # 9 because we'll be adding more items  
  puts ""
end

def show_students
  print_header.center(100)
  print_students_list.center(100)
  print_footerc.center(100)
end


def load_students(filename = "students.csv")
  file = File.open("students.csv", "r")
  file.readlines.each do |line| 
    name, cohort = line.chomp.split(',')
    add_student(name, cohort)

    puts ""
  end
  file.close
  puts ""
       msg = 'Loading from students.csv'

  3.times do
  print "\r#{ msg }"
  sleep 0.5
  print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
  sleep 0.5
end
  puts"Loaded from students.csv"
  puts ""
  show_students
  p 

end


def save_students
	file = File.open("students.csv", "w")

	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
  p 
     msg = 'Saving to students.csv'

3.times do
  print "\r#{ msg }"
  sleep 0.5
  print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
  sleep 0.5
end
  puts "Saved to students.csv"
  p
  p
end
	

def process(selection)
  case selection

  when "1"
    input_students

  when "2"
    show_students

  when "3"
   save_students
when "4"
	load_students


  when "9"
exit
  else
    msg = 'I dont know what you mean, try again!!'

3.times do
  print "\r#{ msg }"
  sleep 0.5
  print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
  sleep 0.5
end
    print "I dont know what you mean, try again!!"
    puts ""
    puts ""
  end
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.length} from #{filename}"
  else

  puts "Sorry, #{filename} dosen't exist!!!!"

  exit 
  end
end

def interactive_menu  
  loop do
    print_menu        
    process(STDIN.gets.chomp)
  end
end
welcome
try_load_students
interactive_menu