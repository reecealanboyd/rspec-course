# frozen_string_literal: true

RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
    expect((16 / 2).even?).to eq(true)
  end

  # same as above
  # all predicate methods get this matcher (be_<predicate>)
  it 'can be tested with predicate matchers' do
    expect(16 / 2).to be_even
  end

  it 'wanted to show more examples' do
    expect(15).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end
