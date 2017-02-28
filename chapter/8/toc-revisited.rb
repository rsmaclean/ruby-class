#!/usr/bin/env ruby

margins = [14, 40]
chapters = [['1', 'Getting Started','1'],['2','Numbers','13'],['3','Letters','34']]

puts "Table of Contents\n".center(60)
chapters.each do |chapter|
  chap_num = 'Chapter '<< chapter[0] <<':'
  page = 'Page ' << chapter[2]
  puts chap_num.ljust(margins[0])<<chapter[1].ljust(margins[1])<<page
end


