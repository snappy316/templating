#!/usr/bin/env ruby
require_relative "./templating"

template = Templating.new
template.ask_questions
template.sub_salutation
template.print_template
