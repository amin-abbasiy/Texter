RT = File.dirname(__FILE__)
puts "Do You Want To Write Enter [w]"
puts "Do You Want To Read Enter [r]"
action = gets.chomp
case action   
  when "w"
  	print "Enter File Name : "
  	filename = gets.chomp + ".txt"
  	if File.file?(filename)
  	puts "Do You Want To Overwrite amin.txt y/n"
  	fnm = gets.chomp
    end
    if fnm == "y" || "*"
  	txt = File.new("#{filename}", "w+") 
  	   puts "Enter Content"
  	   tx = gets.chomp
  	   txt.syswrite(tx)
  	print "Your File Is In #{Dir.pwd} \n"
    end
    if fnm == "n"
    	puts "Goodbye"
    end
  when "r"
  	print "Please Enter Filename : "
  	filename = gets.chomp + ".txt"
  	if File.file?(filename)
	   text = File.new("#{filename}", "r")
	   if text
	  	  content = text.sysread(100)
		  puts content
		  puts "W"
		  con = File.new("#{filename}", "a+")
		  content = gets.chomp
		  con.syswrite(content)
	   end
	else
	   puts "File Not Exist"
    end
end
		
		