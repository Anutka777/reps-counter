# frozen_string_literal: true

require './lib/rep_counter'

RSpec.describe RepCounter do
  describe '#simple_pyramid' do
    it 'returns the amount of reps in a simple pyramid workout' do
      expect(subject.simple_pyramid(10)).to eql(55)
    end
  end

  describe '#dimond_pyramid' do
    it 'returns the amount of reps in a dimond pyramid workout for even input' do
      expect(subject.dimond_pyramid(10)).to eql(30)
    end

    it 'return the amount of reps in a dimond pyramid workout for odd input' do
      expect(subject.dimond_pyramid(5)).to eql(9)
    end
  end

  describe '#simple_with_reversed_pyramid' do
    it 'returns the amount of reps in a simple + reversed pyramids workout' do
      expect(subject.simple_with_reversed_pyramid(10)).to eql(110)
    end
  end
end
