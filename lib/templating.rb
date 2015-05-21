#!/usr/bin/env ruby

print "What is the customer's first name? - "
first_name = gets.chomp

print "What is the customer's last name? - "
last_name = gets.chomp

puts "What should the salutation be?"
puts "Use '@first_name' for their first name,"
print "and '@last_name' for their last name - "
salutation = gets.chomp

print "What product is the customer interested in? - "
product = gets.chomp

address = "1 Infinite Loop\nSomewheresville, CA 98765"

salutation.gsub!("@first_name", first_name)
salutation.gsub!("@last_name", last_name)

email_body = "\n\n" + address + "\n\n" +
  salutation + ", \n\n" +
  "Thank you for your interest in " + product + "s.\n" +
  "Unfortunately, we sold our last " + product + " yesterday.\n\n" +
  first_name + ", if you have any more questions about our products,\n" +
  "email us at support@horcrux.com, tweet to @horcrux_support,\n" +
  "or call us @ 1-800-HORCRUX.\n\n"

puts email_body
