

File.open("dictionary.txt","r").each_line do |word|
  Word.create(word: word.chomp!, canonical: word.downcase.split('').sort.join)
end


