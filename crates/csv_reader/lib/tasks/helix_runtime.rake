require 'helix_runtime/build_task'

HelixRuntime::BuildTask.new("csv_reader")

task :default => :build
