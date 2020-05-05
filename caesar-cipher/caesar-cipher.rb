def caesar_cipher(string, shift)
  array = string.split(//)
  array.map! do |char|
    n = char.ord
    if n >= 65 && n <= 90
      n = ((n + shift) - 65 ) % 26 + 65
    elsif n >= 97 && n <= 122
      n = ((n + shift) - 97 ) % 26 + 97
    end
    char = n.chr
  end
  string = array.join
end

puts caesar_cipher("What a string!", 5)