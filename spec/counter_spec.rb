# require_relative '../lib/counter'

# RSpec.describe Counter do
#   describe '#grouped' do
#     let(:words) { %w[one two three four] }
#     let(:result) { subject.grouped(words) }

#     it 'returns a hash object' do
#       expect(result).to be_a Hash
#     end

#     it 'stops with the last three words of the file' do
#       expect(result.keys.last).to eq %w[two three four]
#     end

#     it 'has keys containing groups of three words' do
#       all_three_word_keys = result.keys.all? { |key| key.length == 3 }
#       expect(all_three_word_keys).to eq true
#       expect(result.keys).to eq [%w[one two three], %w[two three four]]
#     end

#     it 'has values containing the frequency the three words appeared' do
#       expect(result.values).to eq [1, 1]
#     end

#     it 'counts multiple occurances of three words' do
#       words = %w[two two two two]
#       result = subject.grouped(words)
#       expect(result.values).to eq [2]
#     end
#   end

#   describe '#top_results' do
#     let(:words) { double }
#     let(:list) do
#       {
#         %w[a b c] => 1,
#         %w[d e f] => 4,
#         %w[n o p] => 2,
#         %w[x y x] => 5
#       }
#     end

#     it 'returns a hash object' do
#       allow(subject).to receive(:grouped).with(words).and_return(list)
#       expect(subject.top_results(words)).to be_a Hash
#     end

#     it 'sorts the results by frequency in descending order' do
#       expected = {
#         %w[x y x] => 5,
#         %w[d e f] => 4,
#         %w[n o p] => 2
#       }
#       allow(subject).to receive(:grouped).with(words).and_return(list)
#       expect(subject.top_results(words, size: 3)).to eq expected
#     end

#     it 'returns the top 100 results' do
#       results = {}
#       101.times { |k, _| results[k] = rand(1..20) }
#       allow(subject).to receive(:grouped).with(words).and_return(results)
#       expect(subject.top_results(words).length).to eq 100
#     end
#   end
# end
