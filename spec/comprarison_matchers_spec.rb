# frozen_string_literal: true

RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 5
  end

  describe 100 do
    # implicit subject { 100 }
    it { is_expected.to be > 90 }
  end
end
