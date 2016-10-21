class String
def ruby_safeguard
  if !self.include? ' - - '
    return true
  end
  return false
  end
end

day = Hash.new(0)
File.open("/Users/nick22tamu/Desktop/rubylab/http_access_log" , "r") do |f|
  f.each do |line|
  if line.ruby_safeguard
    next
  end
  time = line[/\[.+\]/]
  date = time[1,11]
  day[date] += 1
  end
end

logs = File.open("/users/nick22tamu/Desktop/rubylab/http_access_log")
totalcounter = 0
counter4 = 0
counter3 = 0
File.open("/users/nick22tamu/Desktop/rubylab/http_access_log", "r").each_line do |line|
  arrayline = line.split(" ")
  if line.ruby_safeguard
    next
  end

  if time = line[/ 4\d\d/]
    counter4 += 1
    totalcounter += 1
  elsif time = line[/ 3\d\d/]
    counter3 += 1
    totalcounter += 1
  else
    totalcounter += 1
  end

error_pct = (counter4.to_f / 726739 * 100).to_i
redirect_pct = (counter3.to_f / 726739 * 100).to_i
end
end

reqfile = Hash.new(0)
File.open("/Users/nick22tamu/Desktop/rubylab/http_access_log" , "r") do |f|
  f.each do |line|
    find_rfile = line[/[a-zA-Z0-9]+\.[a-zA-Z1+9]+/]
  reqfile[find_rfile] += 1
  end
end
sorted = reqfile.sort {|k,v| v[1].to_i <=> k[1].to_i }.to_h
max_file = sorted.first
min_file = sorted.min_by(&:last)
day.each do |date, total|
  puts "The amount request on #{date} is #{total}"
end
puts "The most requested file is #{max_file[0]} with #{max_file[1]} request"
puts "The least requested file is #{min_file[0]} with #{min_file[1]} request"
puts "This is the error percent: #{error_pct} %"
puts "This is the redirect percent: #{redirect_pct} %"
puts "The total amount of requests is: #{logs.readlines.size}"
puts "The total amount of requests is: #{totalcounter}"
