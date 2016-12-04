$logger_depth = 0

def log(string_description, &block)
  prefix = "  " * $logger_depth
  puts "#{prefix}Beginning #{string_description}...."
  $logger_depth += 1
  result = block.call
  $logger_depth -= 1
  puts "#{prefix}#{string_description} finished, returning #{result.to_s}"
end

log "first block" do
  log "second block" do
    log "third block" do
      3
    end
    2
  end
  1
end




# using global variable - include indents for each block of code.
