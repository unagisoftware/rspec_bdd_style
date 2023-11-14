Gem::Specification.new do |s|
  s.name          = 'rspec-bdd-style'
  s.version       = '1.0.2'
  s.authors       = ['Agustín Serena']
  s.email         = ['aserena92@gmail.com']
  s.summary       = 'A set of utilities to enhance readability in RSpec BDD-style specifications.'
  s.description   = <<-DESC
    RspecBddStyle provides a collection of methods following the BDD (Behavior-Driven Development) style to enhance clarity and readability
    in your RSpec specifications. These methods, such as given_i, when_i, and_i, and then_i, simplify the writing of scenarios and actions in your
    tests. It makes it easier to write more expressive and understandable specifications for your development team.
  DESC
  s.homepage      = 'https://github.com/unagisoftware/rspec_bdd_style'
  s.license       = 'MIT'
  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ['lib']
end
