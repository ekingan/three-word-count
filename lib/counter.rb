class Counter

  def grouped(words, groups_of: 3)
    list = {}
    words.each_cons(groups_of) do |word|
      list.key?(word) ? list[word] += 1 : list[word] = 1
    end
    list
  end

  def top_results(words, size: 100)
    list = grouped(words)
    Hash[list.sort_by { |_, v| -v }[0...size]]
  end
end
