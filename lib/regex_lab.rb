require 'pry'
def starts_with_a_vowel?(word)
  if word.match(/\A[aeiou]/i) == nil
    return false
  else
    return true
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/\A[A-Z].*\W\z/)
    return true
  elsif text.match(/\A[a-z].*\W\z/) || text.match(/\A[A-Z].*\w\z/)
    return false
  else
    return nil
  end
end

def valid_phone_number?(phone)
  if phone.scan(/\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/)
    return true
  else
    return false
  end
end
