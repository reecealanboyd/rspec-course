# frozen_string_literal: true

RSpec.describe 'not_to method' do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq(10)
  end
end
