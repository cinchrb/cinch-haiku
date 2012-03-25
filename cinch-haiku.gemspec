Gem::Specification.new do |s|
  s.name = 'cinch-haiku'
  s.version = '0.0.1'
  s.summary = 'A plugin providing haikus.'
  s.description = s.summary
  s.authors = ['Dominik Honnef']
  s.email = ['dominikh@fork-bomb.org']
  s.homepage = 'http://rubydoc.info/github/cinchrb/cinch-haiku'
  s.required_ruby_version = '>= 1.9.1'
  s.files = Dir['LICENSE', 'README.md', '{lib,examples}/**/*']
  s.add_dependency("cinch", "~> 2.0")
  s.add_dependency("nokogiri")
  s.license = "MIT"
end
