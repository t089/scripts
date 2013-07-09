#!/usr/bin/env ruby

#  2013-07-09
#  Reads from STDIN and converts PostScript color statements to black
#  Outputs to STOUT

ARGF.each do |line|  
  color_def = /0.\d{3} 0.\d{3} 0.\d{3} setrgbcolor/
  
  line.sub!(color_def, "0.000 0.000 0.000 setrgbcolor")
  puts line
end