puts File.read(/users/nick22tamu/Desktop/rubylab/http_access_log)
# reads and prints the entire file
=begin {
IDEA take each line and .to_s (to string) then you break into individual words
by using spaces as breaks. from there you make it into an array and use the
repetitive positions of the lines to parse it.

}
