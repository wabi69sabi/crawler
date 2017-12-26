require 'gdbm'

gdbm = GDBM.new("links.db")

cleaned = []

gdbm.each_pair do |index, link|
  # puts "#{index} --> #{link}"
  cleaned << "#{index} --> #{link}"
end

# gdbm.keys.sort.each { |key| puts gdbm[key] }

p gdbm.keys.sort

puts cleaned.sort
gdbm.close
