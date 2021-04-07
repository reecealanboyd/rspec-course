# frozen_string_literal: true

RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    [5, 7, 9].each do |val|
      expect(val).to be_odd
    end
  end

  # same as above
  it 'allows for aggregate checks - all matcher' do
    expect([5, 7, 9]).to all(be_odd)
  end

  it 'should have all elements less than 10' do
    expect([5, 7, 9]).to all(be < 10)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be_odd) }
    it { is_expected.to all(be < 10) }
  end
end
