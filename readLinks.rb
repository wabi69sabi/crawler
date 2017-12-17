require 'gdbm'

gdbm = GDBM.new("links.db")

gdbm.each_pair do |index, link|
  puts "#{index} --> #{link}"
end
gdbm.close
