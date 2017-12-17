require 'gdbm'

gdbm = GDBM.new("links.db")

cleaned = []

gdbm.each_pair do |index, link|
  # puts "#{index} --> #{link}"
  cleaned << "#{index} --> #{link}"
end

gdbm.close
puts cleaned.sort

