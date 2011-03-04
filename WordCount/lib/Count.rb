# Count incluye el método "count_words" para contar palabras
module Count

  # Cuenta palabras. Cada palabra debe estar formada solo por letras ASCII
  #
  # Se reconocen con el patrón [a-zA-Z]+
  #
  # Se ha implementado con un patron que reconoce cada palabra y
  # la sustituye por la letra w. Luego se calcula la longitud de la cadena
  # generada
  def count_words(text)
    if (text =~ /[^a-zA-Z]*\\Z/) then text = "" end  # elimina ficheros sin palabras

  # sustituye cada palabra por letra "w" y calcula longitud de string resultante
    return text.gsub(/[^a-zA-Z]*[a-zA-Z]+[^a-zA-Z]*/,"w").length.to_s
  end

end
