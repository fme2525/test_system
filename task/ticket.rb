require_relative 'task'

module Task
  class Ticket < Task
    def run(data)
      lucky_tickets_count(data[0].to_i).to_s
    end

    private

    def lucky_tickets_count(digits_count)
      accum = [Array.new(10) { 1 }]

      (2..digits_count).each do |n|
        prev_calculated = accum.last
        accum << []
        max_sum = 9 * n
        d_row = []
        0.upto(max_sum) do |k|
          accum[-1] << (0..[k, 9].min).map do |l|
            prev_calculated[k - l] || 0
          end.sum
        end
      end

      accum.last.map { |x| x**2 }.sum
    end
  end
end

