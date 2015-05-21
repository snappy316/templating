#!/usr/bin/env ruby
require "minitest/autorun"
require "minitest/spec"
require_relative "../lib/template"

describe Template do
  before do
    @template = Template.new
    @expected_result = "

1 Infinite Loop
Somewheresville, CA 98765

Dear John Q Smith,

Thank you for your interest in Horcrux Widgets.
Unfortunately, we sold our last Horcrux Widget yesterday.

John Q, if you have any more questions about our products,
email us at support@horcrux.com, tweet to @horcrux_support,
or call us @ 1-800-HORCRUX.

"
  end

  it "should print out correctly with all variables assigned" do
    @template.first_name = "John Q"
    @template.last_name = "Smith"
    @template.salutation = "Dear @first_name @last_name"
    @template.product = "Horcrux Widget"
    @template.address = "1 Infinite Loop\nSomewheresville, CA 98765"
    @template.sub_salutation

    @template.render_template.must_equal @expected_result
  end

  it "should print the default salutation if none is given" do
    @template.first_name = "John Q"
    @template.last_name = "Smith"
    @template.product = "Horcrux Widget"
    @template.address = "1 Infinite Loop\nSomewheresville, CA 98765"
    @template.sub_salutation

    @template.render_template.must_include "Dear John Q,"
  end
end
