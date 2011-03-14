# Ejemplo 1 de Append en Ruby, similar a Java
if (ARGV.length != 2)
  raise " Syntax: Append.rb <src> <dest> "
end

ii = File.open(ARGV[0]) # abre <source> en ii
oo = File.open(ARGV[1], "a") # abre <dest> en modo solo escritura
                             # “a” coloca puntero de escritura al final de oo
while ( !(ii.eof?) )
  buffer = ii.read(16)
  oo.write(buffer)
end
ii.close # cierra ii
oo.close # cierra oo
