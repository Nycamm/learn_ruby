#write your code here
def echo call
  call
end

def shout call
  call.upcase
end

def repeat (call, repetitions = 2)
  response = call
  (repetitions - 1).times do
    response = response + " " + call
  end
  response
end

def start_of_word (word, number_of_characters = 1)
  result = ""
  if number_of_characters > 1
    result = word[0..(number_of_characters - 1)]
  else
    result = word[0]
  end
  result
end

def first_word sentence
  all_words = sentence.split
  first = all_words[0]
  first
end

def titleize sentence
  words = sentence.split
  result = words.shift.capitalize
  capital_words = [result]
  words.each do |word|
    if word != "and" and word != "the" and word != "over"
      capital_words << word.capitalize
    else
      capital_words << word
    end
  end
  result = capital_words.join(" ")
end
