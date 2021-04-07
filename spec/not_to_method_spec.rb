# frozen_string_literal: true

RSpec.describe do
  it 'checks that two values do not match' do
    expect('Hello').not_to eq('hello')
  end
end
