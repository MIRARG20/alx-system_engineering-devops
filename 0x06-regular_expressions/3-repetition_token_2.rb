#!/usr/bin/env ruby

def match_school(input)
    regex = /hbt+n/

    match_result = input.match(regex)

    puts match_result ? match_result[0] : ''
end
