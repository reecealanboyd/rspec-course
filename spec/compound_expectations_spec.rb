# frozen_string_literal: true

RSpec.describe 25 do
  it 'longform - is expected to be odd and be > 20' do
    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd and be > 20 }
end

RSpec.describe [:usa, :canada, :mexico] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:usa) or eq(:canada) or eq(:mexico)
  end
end
