class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.canonical(word) #hicimos un metodo de clase, no de instancia
    word.chomp.downcase.chars.sort.join
  end

  def self.anagrams_for(word)
    Word.where(canonical: Word.canonical(word))
  end

end
