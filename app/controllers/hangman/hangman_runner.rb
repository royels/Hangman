require 'set'
class HangmanRunner
  attr_accessor :words, :guesslist, :guess_count

  def initialize(words, length)
    @words = Set.new
    @tempset = words.clone
    words.each do |word_obj|
      @words.add(word_obj.text)
    end
    @pattern = "-" * length
    @guesslist = SortedSet.new
    @guess_count = 10
    # TODO: Make guess_count dynamic
  end



  def get_pattern(guess)
    guess = guess.downcase
    if @guesslist.include? guess
      return @pattern
    end
    @guesslist.add(guess)
    words_pick = {}
    make_pattern(words_pick, guess)
    bestPattern = determine_max(words_pick)
    @pattern = make_new_pattern(bestPattern)
    @words = words_pick[bestPattern]
    if not @pattern.include?(guess)
      @guess_count -= 1
    end
    return @pattern
  end

  def make_pattern(words_pick, guess)
    @words.each do |word|
      temp_pattern = ""
      temp = Set.new
      (0...word.length).each do |i|
        if word[i] == guess
          temp_pattern += guess
        else
          temp_pattern += "-"
        end
      end
      if words_pick[temp_pattern].nil?
        temp.add(word)
        words_pick[temp_pattern] = temp
      else
        temp = words_pick[temp_pattern]
        temp.add(word)
        words_pick[temp_pattern] = temp
      end
    end
  end


  def determine_max(words_pick)
    max = 0
    return_key = ""
    words_pick.each do |key, value|
      if value.size > max
        max = value.size
        return_key = key
      end
    end
    return return_key
  end

  def make_new_pattern(best_pattern)
    new_pat = ""
    (0...best_pattern.length).each do |i|
      if best_pattern[i] != @pattern[i]
        if best_pattern[i] != '-'
          new_pat += best_pattern[i]
        end
        if @pattern[i] != '-'
          new_pat += @pattern[i]
        end
      else
        new_pat += '-'
      end
    end
    return new_pat
  end

end