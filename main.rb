require_relative 'tester'

# require_relative 'task/string_len'
# task = Task::StringLen.new
# tester = Tester.new(task, 'data/0.String')
# puts tester.run_tests

# puts ((1..10).to_a + (1..9).to_a).map { |x| x**2 }.sum
# return

require_relative 'task/ticket'
# puts Task::Ticket.new.run(3)
# return

task = Task::Ticket.new
tester = Tester.new(task, 'data/1.Tickets')
puts tester.run_tests