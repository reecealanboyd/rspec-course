# frozen_string_literal: true

RSpec.describe Hash do
  subject do
    { a: 1, b: 2 }
  end

  subject(:bob) do # how you can have multiple subjects
    { a: 1, b: 3 }
  end

  let(:alice) { { a: 1, b: 2 } }
  # is this different than bob above?
  # Yes actually.
  # The subject syntax gives you some more helpers

  it 'has two key value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end
end
