class PigLatinizer
    

    def piglatinize(input)
        input.split(' ').map do |string|
            first_vowel_index = string.index(/[aeiou]/i) 
            if first_vowel_index == 0 
                 string + "way"
            else 
                string.slice(first_vowel_index..-1) + string.slice(0..first_vowel_index-1)+"ay"
            end
        end.join(' ')
    end
end