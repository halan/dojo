require 'spec_helper'

describe FizzBuzz do
  subject { FizzBuzz.new length }
  let(:length) { 100 }

  its(:to_ary) { should have(length).items }

  describe 'Fizz' do
    it 'returned by [3]' do
      subject[3].should == 'Fizz'
    end

    it 'not returned by [2]' do
      subject[2].should_not == 'Fizz'
    end
  end

  describe 'Buzz' do
    it 'returned by [5]' do
      subject[5].should == 'Buzz'
    end

    it 'not returned by [2]' do
      subject[2].should_not == 'Buzz'
    end
  end

  describe 'FizzBuzz' do
    it 'returned by [15]' do
      subject[15].should == 'FizzBuzz'
    end

    it 'not returned by [2]' do
      subject[2].should_not == 'Buzz'
    end
  end
end
