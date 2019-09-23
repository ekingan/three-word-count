require_relative 'counter'
require_relative 'word_array'
require 'pry'
# extracts words from a file, formats them, and find their frequency
class WordParser
  attr_reader :files
  attr_accessor :counter, :word_list

  def initialize(files, counter = Counter.new, word_list = WordArray.new)
    @files = files
    @counter = counter
    @word_list = word_list
  end

  def frequency
    word_list = []
    lines = read_lines(word_list)
    words = remove_whitespace(lines)
    find_top_results(words)
  end

  private

  def read_lines(word_list)
    files.each_line.each do |line|
      word_list << strip_punctuation(line.split)
    end
    word_list
  end

  def strip_punctuation(words)
    words.map { |word| word.downcase.gsub(/[^a-z0-9\s]/i, '') }
  end

  def remove_whitespace(lines)
    lines.flatten!.reject!(&:empty?)
    lines
  end

  def find_top_results(words)
    counter.top_results(words)
  end
end
