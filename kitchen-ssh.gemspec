# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'kitchen/ssh/version'

Gem::Specification.new do |s|
  s.name          = "kitchen-ssh"
  s.license       = 'Apache-2.0'
  s.version       = Kitchen::Ssh::VERSION
  s.authors       = ["Neill Turner"]
  s.email         = ["neillwturner@gmail.com"]
  s.homepage      = "https://github.com/neillturner/kitchen-ssh"
  s.add_dependency('minitar', '~> 0.6')
  s.summary       = "ssh and ssh_gzip driver for test-kitchen for any running server with an ip address"
  candidates = Dir.glob("{lib}/**/*") +  ['README.md', 'LICENSE.txt', 'kitchen-ssh.gemspec', 'Gemfile']
  s.files = candidates.sort
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'
  s.description = <<-EOF
ssh and ssh_gzip driver for test-kitchen for any running server with an ip address

*** As well as ssh it supports a second driver called ssh_gzip that will also gzip file before transfer which can provide
a big performance improvement when alot of files are transfered. ****

EOF

end
