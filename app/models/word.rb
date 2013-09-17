class Word < ActiveRecord::Base

  def self.anagrams(input)
    anagram = Word.where(:canonical => input.downcase.split('').sort.join)
    anagram
  end
end
