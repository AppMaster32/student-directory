

students = [
"Faisal Aydarus",
"mayadrivermd",
"michballard",
"henry stanley", 
"jerome.pratt",
"chris oatley",
"ilccyk",
"leo poldkwok",
"tillett",
"nickrhys",
"james.r.mcneil", 
"lovis-schultze",
"tatienantes",
"iblockchain",
"v.koch",
"byverdu", 
"dave wickes",
"silver io funk", 
"andy gates010", 
"spike01",
"global avocado", 
 "mr. yogesh"
]
def print_header
puts "The students of my cohort at Makers Academy"
puts "___________________________________________"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)	
	print "Overall, we have #{students.length} great students "
end




print_header
print(students)
print_footer(students)

