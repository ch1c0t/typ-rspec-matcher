require 'rspec/fit'

class T
  def initialize it
    @it = it
  end

  def ok?
    false
  end

  def to_s
    "got #{@it}"
  end
end

describe do
  it do
    matcher = fit T

    bool = matcher.matches? 42
    expect(bool).to be false

    expect(matcher.failure_message).to eq "got 42"
    expect(matcher.description).to eq "be of T"
  end
end
