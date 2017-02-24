#!/usr/bin/env ruby

def chapter_line(chapterNumber, title, pageNumber)
  chapter_margin = 14
  title_margin = 40

  chapter = 'Chapter '+chapterNumber+':'
  page = 'Page '+pageNumber

  puts chapter.ljust(chapter_margin)<<title.ljust(title_margin)<<page
end

puts "Table of Contents\n".center(60)
chapter_line('1', 'Getting Started', '1')
chapter_line('2', 'Numbers', '13')
chapter_line('3', 'Letters', '33')
