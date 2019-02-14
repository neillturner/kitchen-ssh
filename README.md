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

## Usage Recommendation ##
For a bit of history this kitchen ssh driver was originally written so that a server created separately (in my case EC2 instances created by cloud formation) could have repeated runs of test kitchen provisioner. 
I also added gzip support to massively speed up the time it took to copy all the config files to the instance. Since writing this some other solutions how been written that might suit you better: 
* proxy driver in test-kitchen that proxies commands through to a test instance whose lifecycle is not managed by Test Kitchen.     
* kitchen-sync plugin has been written that also massively improves performance but by just sync the changes to config files instead of zipping them up.    


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

### Bastion Host

If you use a bastion host, add the following lines:

```yaml
transport:
  name: ssh
  ssh_gateway: bastion-ip
  ssh_gateway_username: bastion-user
```

Alternatively add `ProxyCommand ssh -W %h:%p bastion-user@bastion-ip` to your `ssh_config(5)`

## Tips

If you get a hang while running kitchen-ssh with a non-root user check that the user was not set to be NOPASSWORD in the sudoer file either. So it hang there waiting for input of the password prompted. After changing the user and key to be root in the .kitchen.yml file, everything worked.
