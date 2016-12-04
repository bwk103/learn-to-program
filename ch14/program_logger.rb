def log(string_description, &block)
  puts "Beginning #{string_description}...."
  result = block.call
  puts "#{string_description} finished, returning #{result.to_s}"
end

log "outer block" do
  log "some little block" do
    3 + 2
  end
  log "yet another block" do
    "I like Thai food!"
  end
  true
end



# put a string telling you it started the block
# put a string telling you it finished the block and what the block returned.
# inside the block put another call to log, passing a block to it
