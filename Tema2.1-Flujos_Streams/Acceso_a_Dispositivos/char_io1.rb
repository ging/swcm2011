# Ejemplo 1 de CharIO en Ruby, similar a Java
#
#  ‘STDIN.getbyte’ lee un byte.
#  ‘STDIN.putc’ escribe un caracter.
#  ‘puts’ escribe en STDOUT un string terminando con linea nueva.

while ( (charRead = STDIN.getbyte() ) != 46 ) # “.” tiene código decimal 46
  ! STDOUT.putc (charRead)
end

puts ("FIN")

