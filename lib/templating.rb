#!/usr/bin/env ruby
require 'yaml'

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

def database
  File.dirname(File.absolute_path(__FILE__)) + '/body.txt'
end

def load
  read_file = File.read(database)
end

email_body = load

puts eval(email_body)
