require_relative '../matcher'

def typ typ_class
  Typ::RSpec::Matcher.new typ_class
end
