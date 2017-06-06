module CurrentBenchmark
  def print_time_spent
    @time = Benchmark.realtime do
      yield
    end
  end
end
