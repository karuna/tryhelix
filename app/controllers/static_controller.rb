require 'csv'

class StaticController < ApplicationController
  include CurrentBenchmark

  def ruby
    @sum = 0
    print_time_spent do
      CSV.foreach(path, headers: true) do |row|
        @sum += row['id'].to_i
      end
    end
  end

  def helix
    print_time_spent do
      @sum = CsvReader.count_id(path)
    end
  end


  private

  def path
    Rails.root.join('tmp', 'some.csv').to_s
  end
end
