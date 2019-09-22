require_relative 'word_parser'
# Receives user input and prints program output
class Terminal
  def run
    results = WordParser.new(input).frequency
    puts print(results)
  end

  def self.run
    new.run
  end

  private 

  def input
    ARGF.read
  end

  def print(results)
    output = []
    results.each { |key, value| output << "#{key.join(' ')} - #{value}" }
    output
  end
end
