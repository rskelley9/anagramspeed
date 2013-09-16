class Word < ActiveRecord::Base

  def self.canonical(input)
    input.downcase.split('').sort.join
  end

  def self.anagrams(input)
    array = []
    Word.all.each do |dict_word|
     if Word.canonical(dict_word.word) == Word.canonical(input)
      array << dict_word
    end
  end
  array
end

def self.anagram(input)
  Word.all.select do |dict_word|
    canonical(dict_word.word) == canonical(input)
  end
end


def self.match?(word)
  Word.where(:word => word)
end

  # def self.anagrams(word)
  #   word
  # end

end
