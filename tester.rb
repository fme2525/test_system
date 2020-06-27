class Tester
  def initialize(task, tests_path)
    @task = task
    @tests_path = tests_path
  end

  def run_tests
    counter = 0
    loop do
      file_path = "#{@tests_path}/test.#{counter}"
      in_file = "#{file_path}.in"
      out_file = "#{file_path}.out"
      return if [in_file, out_file].any? { |f| !File.exist?(f) }

      result = run_test(in_file, out_file)
      puts "Test #{counter}: #{result ? 'ok' : 'fail'}"
      counter += 1
    end
  end

  def run_test(in_file, out_file)
    expect = File.read(out_file).strip
    in_data = File.read(in_file).split(/\r?\n|\r(?!\n)/)
    actual = @task.run(in_data)
    result = actual == expect
    unless result
      puts "actual: #{actual.inspect}, expect: #{expect.inspect}"
    end
    result
  rescue Exception => e
    puts e.inspect
    false
  end
end
