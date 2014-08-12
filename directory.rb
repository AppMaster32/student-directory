@students = []


def welcome
  puts "\e[H\e[2J"
puts " "
         msg = "Welcome to student directory!".center(70)

  3.times do
  print "\r#{ msg }"
  sleep 0.5
  print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
  sleep 0.5
end
 
  puts " "
  puts " "


end



def print_menu 
puts " " 
  puts " "
  puts "1. Input the students ".center(79)

  puts "2. Show the students".center(77)
  
  puts "3. Save the list to students.csv".center(89)
  
  puts "4. Load the list from students.csv".center(90)
  puts "9. Exit".center(64) # 9 because we'll be adding more items  
  
end

def input_students
  puts "\e[H\e[2J"
  puts "Please enter the names of the students"
    puts "To return to the menu, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do    
    # add the student hash to the array
    add_student(name, :august)
    puts " "
    puts
    puts "Overall we have #{@students.length} student#{'s' if @students.length > 1}"

    # get another name from the user
    name = gets.chomp
  end
end


def show_students
  print_header
  print_students_list
  print_footer
end

def print_header
  print 'The students of my cohort at Makers Academy'.center(80)
  puts " "
  puts '---------------------------------------'.center(80)
  puts " "
end


def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(80)
  end
end

def print_footer  
t = Time.new
print "#{t.strftime ("As of %Y-%m")}, we have #{@students.length} great students".center(80)
puts " "
puts "=======================================".center(80)    
end

def add_student(name, cohort)
    @students << {:name => name, :cohort => cohort}    
end






def times
  t = Time.new
end

def load_students(filename = "students.csv")
  file = File.open("students.csv", "r")
  file.readlines.each do |line| 
    name, cohort = line.chomp.split(',')
    add_student(name, :august)
  end
  file.close
  puts ""
       msg = 'Loading from students.csv'.center(74)

  3.times do
  print "\r#{ msg }"
  sleep 0.5
  print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
  sleep 0.5
end
t = Time.new
puts " "
  puts "Loaded from students.csv at #{t.strftime ("As of %Y-%m")}".center(80)
  puts ""
  show_students
  puts " " 

end


def save_students 
	file = File.open("students.csv", "w")

	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close

  puts " " 
     msg = 'Saving to students.csv'.center(64)

3.times do
  print "\r#{ msg }"
  sleep 0.5
  print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
  sleep 0.5
end
t = Time.new
puts " "
  puts "Saved to students.csv at #{t.strftime ("As of %Y-%m")}".center(80)
  puts " "
  puts " "
end
  
def clearPP
puts "\e[H\e[2J"
end

def process(selection)
  case selection

  when "1"
    input_students

  when "2"
    puts "\e[H\e[2J"
    show_students

  when "3"
    puts "\e[H\e[2J"
   save_students

when "4"
  puts "\e[H\e[2J"
	load_students


  when "9"
    puts "\e[H\e[2J"
exit

  else
    msg = 'I dont know what you mean, try again!!'.center(74)

2.times do
  print "\r#{ msg }"
  sleep 0.5
  print "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
  sleep 0.5
end
puts " "
    print "Please choose from the given pparameters listed below!!".center(74)
    puts ""
    puts ""
  end
end

def try_load_students
  t = Time.new
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(students.csv)
    load_students(students.csv)
    puts "Loaded #{@students.length} from #{students.csv}".center(74)
  else

  puts "Sorry, #{students.csv} dosen't exist!!!!".center(74)

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