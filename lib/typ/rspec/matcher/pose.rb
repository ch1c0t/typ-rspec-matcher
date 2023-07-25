require_relative '../matcher'

def pose typ_class
  Typ::RSpec::Matcher.new typ_class
end
