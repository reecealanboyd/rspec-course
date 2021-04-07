# frozen_string_literal: true

# you get implicit subject when passing in class name instead of string here
RSpec.describe Hash do
  # let(:subject) { Hash.new } # this already happening behind the scenes

  it 'should start off empty' do
    puts subject # {}
    puts subject.class # Hash
    expect(subject.length).to eq(0)
  end

  it 'should support adding keys and values' do
    subject[:some_key] = 'some value'
    expect(subject.length).to eq(1)
    expect(subject[:some_key]).to eq('some value')
  end
end
