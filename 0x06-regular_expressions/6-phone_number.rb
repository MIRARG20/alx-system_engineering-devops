#!/usr/bin/env ruby

def match_school(input)
    regex =  /\A\d{10}\z/

    match_result = input.match(regex)

    puts match_result ? match_result[0] : ''
end
