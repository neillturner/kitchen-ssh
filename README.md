# kitchen-ssh

ssh and ssh_gzip driver for test-kitchen for any running server with an ip address.

As well as ssh it supports a second driver called ssh_gzip that will also gzip file before transfer which can provide 
a big performance improvement when alot of files are transfered. 

server must be created and destroyed natively (e.g. via cloudformation, heat, or cloud or virtualization console).
specify driver parameters
*  hostname
*  port
*  username
*  password
*  sudo
*  ssh_key
*  forward_agent

NOTE: ssh driver is compatibile with test-kitchen 1.4 while ssh_gzip has legacy driver compatiability 
with test-kitchen 1.4 


## Installation

Add this line to your application's Gemfile:

    gem 'kitchen-ssh', group: :integration

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kitchen-ssh

## Usage

In your .kitchen.yml file set driver to be 'ssh' or 'ssh_gzip'.

##Example

```yaml
---
driver:
  name: ssh
  hostname: your-ip
  port: 22
  username: username 
  ssh_key: /path/to/id_rsa
```

or 

```yaml
---
driver:
  name: ssh_gzip
  hostname: your-ip
  port: 22
  username: username 
  ssh_key: /path/to/id_rsa
```
