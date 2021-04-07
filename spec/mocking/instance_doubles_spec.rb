# frozen_string_literal: true

class Person
  def a
    sleep(3)
    'Hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20) # this b really shouldn't exist
      expect(person.a).to eq('Hello')
    end
  end

  describe 'instance double/verifying double' do
    it 'can only implement methods that are defined on the class' do
      # person = instance_double(described_class, a: 'Hello', b: 20)
      # the above would fail
      person = instance_double(described_class, a: 'Hello')

      # allow(person).to receive(:a).with(5).and_return('Hello')
      # the above would also fail because :a only accepts 0 arguments, not 1
    end
  end
end
