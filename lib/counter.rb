# creates an object with frequencies of grouped words
class Counter
  def top_results(words, size: 100)
    list = grouped(words)
    Hash[list.sort_by { |_, v| -v }[0...size]]
  end

  private

  def grouped(words, groups_of: 3)
    words.each_cons(groups_of).each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
  end
end
