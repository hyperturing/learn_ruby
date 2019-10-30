#write your code here
def echo string
    string
end

def shout string
    string.upcase
end

def repeat(string, occurences=2)
    ("#{string} " * occurences).strip
end

def start_of_word(string, number_of_letters)
    string[0..number_of_letters - 1]
end

def first_word string
    string.split(" ").first
end

def titleize title
    no_capitalize = ["and", "or", "over", "the", "a", "an", "but", "of"]

    word_list = title.split(" ")

    word_list.each_with_index do |word, i|
        if (i == 0 or !no_capitalize.include? word)
            word_list[i] = word.capitalize
        end
    end
    word_list.join(" ")
end