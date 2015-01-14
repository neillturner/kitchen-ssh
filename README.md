# kitchen-ssh

ssh driver for test-kitchen for any running server with an ip address

server must be created and destroyed natively (e.g. via cloud or virtualization console).
specify driver parameters
*  hostname
*  port
*  username
*  password
*  sudo
*  ssh_key
*  forward_agent

There is also a second driver called ssh_gzip that will also gzip file before transfer which can provide 
a big performance improvement when alot of files are transfered.


## Installation

Add this line to your application's Gemfile:

    gem 'kitchen-ssh', group: :integration

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kitchen-ssh

## Usage

In your .kitchen.yml file set driver to be 'ssh' or 'ssh_gzip'.

