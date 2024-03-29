require_relative 'helper'

describe Typ::RSpec::Matcher do
  let(:matcher) { described_class.new Positive }

  it 'works' do
    bool = matcher.matches? -1
    expect(bool).to be false

    failure_message = <<~S.chomp
      \e[1;34m-1\e[0m
      #{Rainbow(Positive).red}
        #{Rainbow('is [:>, 0]').red}
    S

    expect(matcher.failure_message).to eq failure_message
  end

  it '#description' do
    expect(matcher.description).to eq "be Positive"
  end
end
