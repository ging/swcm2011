# Ejemplo 1 de Copy en Ruby, similar a Java
if (ARGV.length != 2)
  raise " Syntax: Copy.rb <src> <dest>  "
end

ii = File.open(ARGV[0]) # abre <source> en ii
oo = File.open(ARGV[1], "w") # abre <dest> en oo en modo solo escritura
                             # “w” asigna ‘0’ a puntero de escritura

while ( !(ii.eof?) )
  buffer = ii.read(16)
  oo.write(buffer)
end

ii.close # cierra ii
oo.close # cierra oo
