# frozen_string_literal: true

# falsy values --- false, nil
# ruthy values --- everything else

RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect(0).to be_truthy
    expect(-1).to be_truthy
    expect('').to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    # more practical example:
    my_hash = { a: 5 }
    expect(my_hash[:b]).to be_nil
  end
end
