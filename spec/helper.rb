require 'typ'
require 'typ/rspec/matcher'

class Positive
  include Typ
  is [:>, 0]
end
