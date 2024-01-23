def translate(sentence)
    words = sentence.split(" ")

    translated_words = words.map do |word|
        if word.match(/^[aeiou]/i) || (match = /^(qu|sch|[^aeiou]+qu|[^aeiou]+)(.*)/i.match(word))
            # ^ = commence la recherche au début du mot
            # (qu|sch|[^aeiou]+qu|[^aeiou]+) = 
                # qu = correspond à la recherche "qu"
                # sch = correspond à la recherche "sch"
                # [^aeiou]+qu = correspond à un ensemble de consonnes suivie de "qu"
                # [^aeiou]+ = correspond à tout ensemble de consonnes
                # (.*) = correspond à la partie restante du mot après avoir identifié un pattern
            match ? match[2] + match[1] + "ay" : word + "ay"
            # l'expression match ? match[2] + match[1] + "ay" : word + "ay" se traduit comme suivant :
                # si le mot commence par "qu" ou "sch" ou une consonne suivie par qu (comme dans square) ou plusieurs consonnes (comme dans three), alors le mot est réorganisé de manière à ce qu'il commence par une voyelle, suivi de l'ensemble des consonnes correspondant aux conditions définies, suivi de "ay"
                # sinon, on prend le mot initial (word) auquel on ajoute +"ay"
        end
    end
    return translated_words.join(" ")
end
