	# Create a method that calculates the average of 4 numbers
	# and prints the value to the screen?
	
	def  method1 (a,b,c,d)
	       var1 = a + b + c + d  
	       var2 = var1 / 4
	       return var2
	end
	
	puts "This is a program that can give you the average of any 4 numbers"
	puts "Please type your first number"
	
	a = gets.to_i
	puts "Please type your second number"
	b = gets.to_i
 	puts "Please type your thrid number"
	c = gets.to_i
	puts "Please type your fourth number"
	d = gets.to_i
	
	puts method1