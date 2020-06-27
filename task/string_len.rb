require_relative 'task'

module Task
  class StringLen < Task
    def run(data)
      data.empty? ? '0' : data[0].size.to_s
    end
  end
end