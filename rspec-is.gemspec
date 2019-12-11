Gem::Specification.new do |g|
  g.name    = 'rspec-is'
  g.files   = `git ls-files`.split($/)
  g.version = '0.0.0'
  g.summary = 'A RSpec extension for typed testing.'
  g.authors = ['Anatoly Chernow']

  g.add_dependency 'rspec'
end
