# frozen_string_literal: true

RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include(' choc')
    end

    it { is_expected.to include('choc') }
  end

  describe [10, 20, 30] do
    it { is_expected.to include(20, 30, 10) }
  end

  describe({ a: 2, b: 4 }) do
    it { is_expected.to include(a: 2) }
  end
end
