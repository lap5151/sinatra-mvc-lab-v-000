class PigLatinizer
  attr_accessor :user_input

  def initialize(user_input)
    @user_input = user_input
  end

  def piglatinize(user_input)
    input = user_input.split("")
    array= []
      input.each_with_index() do |elem, n|
        array << input[n+1]
      end
    array.pop()
    array << input[0]
    array.join() + "ay"
  end

  def piglatinize_phrase(phrase)
    array = phrase.split
    new_array = []
      array.each do |word|
        new_array << piglatinize(word)
      end
    new_array.join(" ")
  end

end
