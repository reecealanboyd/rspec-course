# frozen_string_literal: true

RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  # or do this for a more readable console output
  it { is_expected.to satisfy('be a palindrome') { |value| value == value.reverse } }
end
