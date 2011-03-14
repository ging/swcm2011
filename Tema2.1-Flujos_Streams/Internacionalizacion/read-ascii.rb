f = File.open("/etc/passwd", "r:ascii") # "r:ascii" fuerza que "/etc/passwd"
       i                                # se interprete como ASCII aunque este en UTF-8
puts "File encoding is #{f.external_encoding}" # => File encoding is US-ASCII
line = f.gets
puts "Data encoding is #{line.encoding}"       # => Data encoding is US-ASCII

