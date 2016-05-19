def log desc, &block
        prefix = " " * $nestdepth.to_i
	puts prefix + "Beginning #{desc}..."
        puts prefix + "...#{desc} finished, returning:\n" + prefix +  block.call.to_s
end

log "outer block" do
$nestdepth = 1
        log "some little block" do
        $nestdepth = 2 	
		log "teeny-tiny block" do 
		$nestdepth = 1
		"lots of love" 
		end
	42
	end
	
	log "yet another block" do "I love Indian food!" end

4 == 4
end
