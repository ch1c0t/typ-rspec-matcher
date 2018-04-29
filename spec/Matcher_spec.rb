require_relative 'helper'

class Positive
  include Typ
  is [:>, 0]
end

describe Typ::RSpec::Matcher do
  let(:matcher) { described_class.new Positive }

  it 'works' do
    bool = matcher.matches? -1
    expect(bool).to be false

    failure_message = <<~S.chomp
      -1
      #{Rainbow(Positive).red}
        #{Rainbow('is [:>, 0]').red}
    S

    expect(matcher.failure_message).to eq failure_message
  end
end
