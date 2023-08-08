require 'typ'
require_relative '../matcher'

def pose typ_class = nil, &block
  typ_class ||= Class.new do
    include Typ
  end

  if block_given?
    typ_class.instance_exec &block
    Typ::RSpec::Matcher.new typ_class, ' pose'
  else
    Typ::RSpec::Matcher.new typ_class
  end
end
