Gem::Specification.new do |g|
  g.name    = 'typ-rspec-matcher'
  g.files   = `git ls-files`.split($/)
  g.version = '0.0.0'
  g.summary = 'A RSpec matcher to check objects with typs.'
  g.authors = ['Anatoly Chernow']

  g.add_dependency 'awesome_print'
  g.add_dependency 'typ-formatter'
end
