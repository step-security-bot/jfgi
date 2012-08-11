#! /usr/bin/env ruby

def update_counter
  current_count = ENV['HITS'].to_i
  new_count = current_count + 1
  ENV['HITS'] = new_count.to_s
  return new_count
end
