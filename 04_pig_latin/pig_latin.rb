#write your code here
def translate string
    vowels = ["a", "e", "i", "o" ,"u"]

    word_list = string.split(" ")

    word_list.each_with_index do |word, i|
        word_length = word.length
        # Our cases:
        # 1. A word begins with one consonant
        #   a. If the word begins with 'q' and 'u'
        #   b. If the word begins with two consonants
        #       c. If the word begins with 's', 'q', and 'u'
        #       d. A word begins with three consonants
        #
        if (!vowels.include?(word[0]))
            if (word[0] == "q" and word[1] == "u")
                slice_length = 1
            else
                slice_length = 0
            end

            if (!vowels.include?(word[1]))
                if (word[0] == "s" and word[1] == "q" and word[2] == "u")
                    slice_length = 2
                else
                    slice_length = 1
                end

                if (!vowels.include?(word[2]))
                    slice_length = 2
                end
            end

            front_slice = word.slice(0..slice_length)
            back_slice_index = slice_length + 1

            back_slice = word.slice(back_slice_index..word_length)

        else
            front_slice = ""
            back_slice = word
        end

        word_list[i] = back_slice  + front_slice + "ay"
    end

    word_list.join(" ")
end