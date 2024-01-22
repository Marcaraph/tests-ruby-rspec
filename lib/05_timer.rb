def time_string(seconds)
    hours = seconds / 3600
    minutes = (seconds % 3600) / 60
    seconds = seconds % 60
    return "#{format('%02d', hours)}:#{format('%02d', minutes)}:#{format('%02d', seconds)}"
end