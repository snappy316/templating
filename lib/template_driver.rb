#!/usr/bin/env ruby
require_relative "./template"

template = Template.new
template.ask_questions
# template.sub_salutation
template.print_template
