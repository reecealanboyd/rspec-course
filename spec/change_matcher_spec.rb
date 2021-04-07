# frozen_string_literal: true

RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }

  it 'checks that a method changes object state from 3 to 4' do
    expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
  end

  it 'checks that a method changes object state by 1' do
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end
end
