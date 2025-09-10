-- ./scripts/right.lua

function perform_seek()
    local duration = mp.get_property_number("duration")
    if duration then
        local skip_percent = 0.04
        local seek_time_1 = duration * skip_percent
	local seek_time_2 = 4
	local seek_time = math.min(seek_time_1, seek_time_2)
        mp.commandv("seek", seek_time, "relative", "exact")
    end
end

mp.add_key_binding("RIGHT", "on_key_press", perform_seek, {repeatable=true})