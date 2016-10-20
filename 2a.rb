logs = File.open("/Users/shelbyguajardo/Desktop/Ruby/http_access_log")
puts = "The total amount of requests is: #{logs.readlines.size}"
