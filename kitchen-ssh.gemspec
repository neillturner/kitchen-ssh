# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'kitchen/ssh/version'

Gem::Specification.new do |s|
  s.name          = "kitchen-ssh"
  s.version       = Kitchen::Ssh::VERSION
  s.authors       = ["Neill Turner"]
  s.email         = ["neillwturner@gmail.com"]
  s.homepage      = "https://github.com/neillturner/kitchen-ssh"
  s.add_dependency('minitar', '~> 0.5')
  s.summary       = "ssh driver for test-kitchen for any running server with an ip address"
  candidates = Dir.glob("{lib}/**/*") +  ['README.md', 'LICENSE.txt', 'kitchen-ssh.gemspec']
  s.files = candidates.sort
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'
  s.description = <<-EOF
== DESCRIPTION:

ssh driver for test-kitchen for any running server with an ip address

== FEATURES:

ssh driver for test-kitchen for any running server with an ip address

EOF

end
