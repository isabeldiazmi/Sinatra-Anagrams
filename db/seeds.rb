# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 

File.open('words.txt', 'r') do |line|
  while l = line.gets.chomp
    Word.create(palabras: l, canonical: Word.canonical(l))
    #chomp quita el salto de linea \n
  end
end