    def echo(word)
        return "#{word}"
    end

    def shout(word)
        word = word.upcase
        return "#{word}"
    end

    def repeat(word, n=2)
        ([word] * n).join " "
    end

    def start_of_word(word, n)
        return word[0, n]
    end

    def first_word(word)
        return word.split.first
    end

    def titleize(sentence)
        little_words = %w{a an and the or}
        return sentence.split.map.with_index { |word, index| (index == 0 ||!little_words.include?(word)) ? word.capitalize : word }.join(' ')
    end