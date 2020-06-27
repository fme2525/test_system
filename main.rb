require_relative 'task/string_len'
require_relative 'tester'

task = Task::StringLen.new
tester = Tester.new(task, 'data/0.String')
puts tester.run_tests