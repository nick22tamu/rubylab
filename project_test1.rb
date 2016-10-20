puts "this shows the program is beginning"
logs = File.open("/users/nick22tamu/Desktop/rubylab/http_access_log")
puts "The total amount of requests is: #{logs.readlines.size}"
logsnum = "#{logs.readlines.size}"


=begin{ |variable|  if num1.include(2)
    print num1
  end
  }
=end



counter = 0
counter4 = 0
counter3 = 0
File.open("/users/nick22tamu/Desktop/rubylab/http_access_log", "r").each_line do |line|
  stringline = line.to_s
  arrayline = stringline.split(" ")
  num1 = arrayline[8].split("0")
  #puts num1
  totalcounter = 0
  if num1.include("4")
    print num1
    counter += 1
    if counter % 2 == 0
      counter4 += 1
    end
    puts counter4

  end
  fail_percent = counter4 / 100
  puts fail_percent
  if num1.include?(3)
    counter += 1
    if counter % 2 == 0
      counter3 += 1
    end
  end
  redirect_percent = counter3 / 100
  puts redirect_percent
  end
end
