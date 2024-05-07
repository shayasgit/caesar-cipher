puts "Caesar Cipher"

def caesar_cipher (word, shift_number)
    new_arr = []
    small_alpha = ('a'..'z').to_a
    capital_alpha = ('A'..'Z').to_a

    word_split = word.split('')

    for w in word_split
        if capital_alpha.include?(w)
            new_arr.push(((w.ord - 65 + shift_number) % 26 + 65).chr)
        elsif small_alpha.include?(w)
            new_arr.push(((w.ord - 97 + shift_number) % 26 + 97).chr)
        else
            new_arr.push(w.chr)
        end
    end
    puts new_arr.join('')

end


print "Enter Your Words: "
words = gets.chomp

print "Enter Shift Number: "
num = gets.chomp.to_i

caesar_cipher(words, num)

