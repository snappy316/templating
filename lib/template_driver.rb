#!/usr/bin/env ruby
require_relative "./template"

template = Template.new
template.ask_questions
# template.sub_salutation
puts template.render_template
