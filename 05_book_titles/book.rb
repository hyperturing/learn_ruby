class Book
# write your code here
    def title=(title)
        @title = titleize(title)
    end

    def title
        @title
    end

    def titleize title
        no_capitalize = ["and", "or", "over", "the", "a", "an", "but", "of", "in"]
    
        word_list = title.split(" ")
    
        word_list.each_with_index do |word, i|
            if (i == 0 or !no_capitalize.include? word)
                word_list[i] = word.capitalize
            end
        end
        word_list.join(" ")
    end
end
