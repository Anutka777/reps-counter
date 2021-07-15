# frozen_string_literal: true

require './lib/rep_counter'

RSpec.describe RepCounter do
  describe '#simple_pyramid' do
    it 'returns amount of reps in a simple pyramid workout' do
      expect(subject.simple_pyramid(10)).to eql(55)
    end
  end
end
