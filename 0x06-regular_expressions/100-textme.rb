#!/usr/bin/env ruby

# Function to extract information from the log entry
def extract_info(log_entry)
    # Regular expression to capture relevant information
    regex = /\[from:(.+?)\] \[to:(.+?)\] \[flags:(.+?)\]/
  
    # Match the regular expression against the log entry
    match_data = log_entry.match(regex)
  
    # If there's a match, extract the sender, receiver, and flags
    if match_data
      sender = match_data[1]
      receiver = match_data[2]
      flags = match_data[3]
      "#{sender},#{receiver},#{flags}"
    else
      "Invalid log entry format"
    end
  end 
  # Process each log entry and print the result
  log_entries.each do |log_entry|
    puts extract_info(log_entry)
  end
  
