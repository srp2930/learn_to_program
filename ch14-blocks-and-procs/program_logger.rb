def log desc, &block
	puts "Beginning #{desc}..."
	puts "...#{desc} finished, returning:\n" + block.call.to_s
	return block
end

log "outer block" do

	log "some little block" do
	5
	end

	log "yet another block" do
	"I like Thai food!"
	end

4 == 5
end
