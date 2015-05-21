#!/usr/bin/env ruby
class Templating
  def email_template
    File.dirname(File.absolute_path(__FILE__)) + '/body.txt'
  end

  def load
    File.read(email_template)
  end

  def get_value(question)
    print "#{question} - "
    value = gets.chomp
    return value unless value.nil? || !value.is_a?(String)
  end

  def get_required_value(question)
    value = ""
    loop do
      value = get_value(question)
      return value unless value.length < 1
    end
  end

  def ask_questions
    @first_name = get_required_value("What is the customer's first name?")
    @last_name = get_value("What is the customer's last name?")
    @salutation = get_value("What should the salutation be? (Use '@first_name' and '@last_name')")
    @product = get_required_value("What product is the customer interested in?")
    @address = "1 Infinite Loop\nSomewheresville, CA 98765"
  end

  def sub_salutation
    if @salutation.length > 0
      @salutation.gsub!("@first_name", @first_name)
      @salutation.gsub!("@last_name", @last_name)
    else
      @salutation = "Dear #{@first_name}"
    end
  end

  def print_template
    email_body = load
    puts eval(email_body)
  end
end
