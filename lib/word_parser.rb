require_relative 'counter'

class WordParser
  attr_reader :files
  attr_accessor :counter

  def initialize(files, counter = Counter.new)
    @files = files
    @counter = counter
  end

  def frequency
    word_list = []
    read_lines(word_list)
    remove_whitespace(word_list)
    find_top_results(word_list)
  end

  private

  def read_lines(word_list)
    files.each_line.each do |line|
      word_list << strip_punctuation(line.split)
    end
  end

  def strip_punctuation(words)
    words.map { |word| word.downcase.gsub(/[^a-z0-9\s]/i, '') }
  end

  def remove_whitespace(word_list)
    word_list.flatten!.reject!(&:empty?)
  end

  def find_top_results(word_list)
    counter.top_results(word_list)
  end
end
