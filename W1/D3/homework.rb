require 'pry-byebug'

puts "***MTA***"

line = [n,l,s]

n = ["ts", "34th", "28thn", "23rdn" "us", "8thn"]

l = ["8thl", "6th", "us", "3rd", "1st"]

s = ["gc", "33rd", "28ths", "us", "ap"]


print "What line are you taking? #{  }"
line_on = gets.chomp

print "What station are you boarding?#{ }"
on = gets.chomp

print "What line are you getting off in? #{  }"
line_off = gets.chomp

print "Which station are you getting off?#{ }"
off = gets.chomp

# I want to make sure that a user never gets off at the same stop he got on! 





#let's differentiate between stations, so there is no confusion!

if (line_on == line_off)
  puts on - off 
end
  
# l line
8thl = 3
6th = 2
us = 1
1st = 0

# n lines
ts_n = 5
34th_n = 4
28th_n = 3
23rdn_n = 2
us_n = 1
8thn_n = 0

# s line
gc_s = 5
33rd_s = 4
28ths_s = 3
23rds_s = 2
us_s = 1
ap_s = 0

end
