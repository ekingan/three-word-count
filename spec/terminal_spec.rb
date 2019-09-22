# require_relative '../lib/terminal'

# RSpec.describe Terminal do
#   describe '#run' do
#     it 'receives user input outputs the results' do
#       allow(subject).to receive(:input).and_return('a b c')
#       expect { subject.run }.to output("a b c - 1\n").to_stdout
#     end
#   end

#   describe '#print' do
#     it 'formats the results' do
#       results = {
#         %w[a safe driver] => 3,
#         %w[not a finger] => 2,
#         %w[cat fight night] => 1
#       }
#       output = [
#         'a safe driver - 3',
#         'not a finger - 2',
#         'cat fight night - 1'
#       ]
#       expect(subject.send(:print, results)).to eq output
#     end
#   end
# end
