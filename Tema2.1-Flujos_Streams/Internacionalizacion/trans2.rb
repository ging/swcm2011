# El fichero "iso-8859-1.txt" usa ISO-8859-1 y contiene solo el string "olé"

f = File.open("iso-8859-1.txt", "r:iso-8859-1:utf-8")
                              # transcodifica de ISO-8859-1 a UTF-8
puts f.external_encoding.name # => ISO-8859-1
line = f.gets                 
puts line.encoding            # => UTF-8
puts line                     # => olé

