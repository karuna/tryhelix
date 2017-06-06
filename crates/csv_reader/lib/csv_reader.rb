require "helix_runtime"

begin
  require "csv_reader/native"
rescue LoadError
  warn "Unable to load csv_reader/native. Please run `rake build`"
end
