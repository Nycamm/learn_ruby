def translate sentence
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  all_words = sentence.split
  result = []
  all_words.each do |word|
    all_letters = word.split("")
    a_vowel = false
    position = 0

    while !a_vowel
      if !vowels.include?(all_letters[position])
        if all_letters[position] == "q" or all_letters[position] == "Q"
          position = position + 2
        else
          position = position + 1
        end
      else
        a_vowel = true
      end
    end
    if position == 0
      result << word + "ay"
    else
      result << word[position..-1] + word[0..position-1] + "ay"
    end
  end

  result = result.join(" ")
  result
end
