# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(


<<<<<<< HEAD

count = 99
puts "#{count} bottles of beer on the wall, #{count} bottles of beer"

while count >0
	count -= 1
	puts "take one down, pass it around, #{count} bottles of beer on the wall"
	end
if count = 0 
	puts "no more bottles of beer on the wall"
end
=======
99.downto(1) do |bottles| 
  puts "#{bottles} bottles of beer on the wall
        #{bottles} bottles of beer!
        You take one down and pass it around,"
  if bottles > 1 
    puts "#{bottles - 1} bottles of beer on the wall!\n\n"
  else
    puts "No more bottles of beer on the wall :-("
  end
end
>>>>>>> a03110c7f26d4b446188ede5aa2561478634462f
