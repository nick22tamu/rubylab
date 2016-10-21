time = line[/\[.+]/]

  date = time[1,11]
day[date] += 1
  end
end

day.each do |date,total|
  puts "The amount requests on #{date} is #{total}"
end
