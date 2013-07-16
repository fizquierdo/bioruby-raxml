#!/usr/bin/env ruby
#

load "../lib/bio-raxml/raxml.rb"

input = {phylip: "../testdata/lonicera_10taxa.rbcL.phy", name: "test"}

puts "Test with #{input.to_s}"
raxml = BioRaxml::Raxml.new input

puts raxml.run_cmd

system raxml.run_cmd
