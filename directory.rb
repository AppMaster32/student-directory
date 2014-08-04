

students = [
{:name => "Faisal Aydarus", :cohort => :august},
{:name => "mayadrivermd", :cohort => :august},
{:name => "michballard", :cohort => :august},
{:name => "henry stanley", :cohort => :august}, 
{:name => "jerome.pratt", :cohort => :august},
{:name => "chris oatley", :cohort => :august},
{:name => "ilccyk", :cohort => :august},
{:name => "leo poldkwok", :cohort => :august},
{:name => "tillett", :cohort => :august},
{:name => "nickrhys", :cohort => :august},
{:name => "james.r.mcneil", :cohort => :august}, 
{:name => "lovis-schultze", :cohort => :august},
{:name => "tatienantes", :cohort => :august},
{:name => "iblockchain", :cohort => :august},
{:name => "v.koch", :cohort => :august},
{:name => "byverdu", :cohort => :august}, 
{:name => "dave wickes", :cohort => :august},
{:name => "silver io funk", :cohort => :august}, 
{:name => "andy gates010", :cohort => :august}, 
{:name => "spike01", :cohort => :august},
{:name => "global avocado", :cohort => :august}, 
{:name => "mr. yogesh", :cohort => :august}
]

def print_header
puts "The students of my cohort at Makers Academy"
puts "___________________________________________"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)	

	puts "Overall, we have #{names.length} great students "
end




print_header
print(students)
print_footer(students)

