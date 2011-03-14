# encoding: utf-8
ole_in_utf = "olé"    # se codifica en código por defecto UTF-8
ole_in_utf.encoding   # => #<Encoding:UTF-8>
                      # Instancia UTF-8 de clase Encoding
ole_in_utf.bytes.to_a # => [111, 108, 195, 169]
                      # Array de bytes con código en decimal

ole_in_8859 = ole_in_utf.encode("iso-8859-1") # transcodifica a ISO-8859-1
ole_in_8859.encoding                          # =>!#<Encoding:ISO-8859-1>
                                              # Instancia ISO-8859-1 de Encoding
ole_in_8859.bytes.to_a                        # => [111, 108, 233]
                                              # Array de bytes con código en decimal

