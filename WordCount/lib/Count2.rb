class Count2  # Incluye el método "count_words" en el modulo "Count"

  def self.count_words(text)
    if (text =~ /[^a-zA-Z]*\\Z/) then text = "" end  # elimina ficheros sin palabras

  # sustituye cada palabra por letra "w" y calcula longitud de string resultante
    return text.gsub(/[^a-zA-Z]*[a-zA-Z]+[^a-zA-Z]*/,"w").length.to_s
  end

end
