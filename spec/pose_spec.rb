require_relative 'helper'
require 'typ/rspec/matcher/pose'

describe 'pose' do
  it 'works without a block' do
    c = Class.new do
      include Typ
      is [:>, 0]
    end

    expect(1).to pose c
    expect(1).to pose Positive
  end

  it 'works with a block' do
    expect(1).to pose {
      is [:>, 0]
    }
  end
end
