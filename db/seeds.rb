

File.open("dictionary.txt","r").each_line do |word|
  # while(line = word.gets)
    Word.create(word: word.chomp!, canonical: word.downcase.split('').sort.join)
  # end
end


