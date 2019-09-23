require_relative '../lib/terminal'

RSpec.describe Terminal do
  describe '#run' do
    it 'receives user input outputs the results' do
      input = 'a b c'
      expect { subject.run(input) }.to output("a b c - 1\n").to_stdout
    end
  end

  describe '#print' do
    it 'formats the results' do
      results = {
        %w[a safe driver] => 3,
        %w[not a finger] => 2,
        %w[cat fight night] => 1
      }
      output = "a safe driver - 3\nnot a finger - 2\ncat fight night - 1\n"
      expect { subject.send(:print, results) }.to output(output).to_stdout
    end
  end
end
