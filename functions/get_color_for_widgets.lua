
function get_color_for_widgets(value, delimiters)
	if not delimiters then
		return "white"
	end

	for delimit in pairs(delimiters) do
		if delimiters[delimit]["limit"] >= value then
			return delimiters[delimit]["color"]
		end
	end
	
end
