require_relative 'word_parser'
# Receives user input and prints program output
class Terminal
  def run(input = ARGF.read)
    results = WordParser.new(input).frequency
    print(results)
  end

  def self.run
    new.run
  end

  private

  def print(results)
    output = results.map { |key, value| "#{key.join(' ')} - #{value}" }
    puts output
  end
end
