puts "this shows the program is beginning"
logs = File.open("/users/nick22tamu/Desktop/rubylab/http_access_log")
puts "The total amount of requests is: #{logs.readlines.size}"

totalcounter = 0
counter = 0
File.open("/users/nick22tamu/Desktop/rubylab/http_access_log", "r").each_line do |line|
  stringline = line.to_s
  arrayline = stringline.split(" ")
  num1 = arrayline[8]
  counter4 = 0
  counter3 = 0
  num2 = arrayline[8].split("0")
  num3 = 0
  if num2[0] = "2"
    num2 = num3
    puts num3
    counter += 1
    totalcounter += 1
  elsif num2[0] = "4"
    puts num2
    counter4 += 1
    totalcounter +=1
  elsif num2[0] = "3"
    counter3 += 1
    totalcounter += 1
  end
end
print totalcounter
print counter
