# frozen_string_literal: true

RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with class syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  # identical to above
  # expect(subject) == is_expected
  context 'with one-liner syntax' do
    it { is_expected.to eq(5) }
  end
end
