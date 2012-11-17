require 'spec_helper'

describe FizzBuzz do
  subject { FizzBuzz.new length }
  let(:length) { 100 }

  its(:to_ary) { should have(length).items }
end
