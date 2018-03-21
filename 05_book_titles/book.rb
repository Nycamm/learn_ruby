class Book
  attr_reader :title

  def title=(new_title)
    words = new_title.split
    capital_words = []
    conjunctions_and_prepositions = ["and", "in", "the", "of", "a", "an"]
    capital_words << words.shift.capitalize
    words.each do |word|
      if !conjunctions_and_prepositions.include?(word)
        capital_words << word.capitalize
      else
        capital_words << word
      end
    end
    @title = capital_words.join(" ")
  end

end
