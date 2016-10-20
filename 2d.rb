require "./methods.rb"

counter = 0
File.open("/Users/shelbyguajardo/Desktop/Ruby/http_access_log")

  f.each do |line|
    if line.ruby_each_day
      next
    end

    if time = line[/ 4\d\d/]
      counter += 1
    end
  end
end

percent = (counter / 726739) * 100
puts "Percentage of request that were not successful: #{{percent.round(2)}}%"
