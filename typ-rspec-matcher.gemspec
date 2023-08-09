Gem::Specification.new do |g|
  g.name    = 'typ-rspec-matcher'
  g.files   = `git ls-files`.split($/)
  g.version = '0.1.2'
  g.summary = 'A RSpec matcher to pose.'
  g.authors = ['Anatoly Chernov']
  g.email   = ['chertoly@gmail.com']

  g.add_dependency 'awesome_print', '~> 1.9.2'
  g.add_dependency 'typ-formatter', '~> 0.1.2'
  g.add_dependency 'typ', '~> 0.1.2'
end
