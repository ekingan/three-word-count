# require_relative '../lib/word_parser'

# RSpec.describe WordParser do
#   let(:file) do
#     'one one one two two two two
#     three three three three three'
#   end

#   let(:expected) do
#     {
#       %w[three three three] => 3,
#       %w[two two two] => 2,
#       %w[one one one] => 1,
#       %w[one one two] => 1,
#       %w[one two two] => 1,
#       %w[two two three] => 1,
#       %w[two three three] => 1
#     }
#   end

#   subject { described_class.new(file) }

#   describe '#frequency' do
#     it 'returns a hash' do
#       expect(subject.frequency).to be_a Hash
#     end

#     it 'returns the expected results' do
#       expect(subject.frequency).to eq expected
#     end

#     it 'returns the results sorted by highest frequency' do
#       results = subject.frequency
#       sorted = results.values.each_cons(2).all? { |a, b| (b <=> a) <= 0 }
#       expect(sorted).to eq true
#     end
#   end

#   describe '#read_lines' do
#     it 'creates a word_list array for each line in the file' do
#       word_list = []
#       expected = [
#         %w[one one one two two two two],
#         %w[three three three three three]
#       ]
#       subject.send(:read_lines, word_list)
#       expect(word_list).to eq expected
#     end
#   end

#   describe '#strip_punctuation' do
#     it 'removes punctuation from words' do
#       words = %w[thanks! her's happy-lucky final. cake?]
#       expect(subject.send(:strip_punctuation, words)).to eq(
#         %w[thanks hers happylucky final cake]
#       )
#     end

#     it 'converts words to lowercase' do
#       words = %w[I LOVE SANDWICHES]
#       expect(subject.send(:strip_punctuation, words)).to eq(
#         %w[i love sandwiches]
#       )
#     end
#   end

#   describe '#remove_whitespace' do
#     it 'removes empty arrays from the word_list' do
#       word_list = [%w[a], [], %w[b c]]
#       subject.send(:remove_whitespace, word_list)
#       expect(word_list).to eq %w[a b c]
#     end

#     it 'removes empty strings from the word_list' do
#       word_list = [['a', ''], [], ['b', '', 'c']]
#       subject.send(:remove_whitespace, word_list)
#       expect(word_list).to eq %w[a b c]
#     end
#   end
# end
