require 'kitchen'
require 'kitchen/driver/ssh_base'

module Kitchen
  module Driver
    class Ssh < SSHBase
       def create(state)
         state[:sudo] = config[:sudo]
         state[:port] = config[:port]
         state[:ssh_key] = config[:ssh_key]
         state[:forward_agent] = config[:forward_agent]
         state[:username] = config[:username]
         state[:hostname] = config[:hostname]
         state[:password] = config[:password]
         wait_for_sshd(state[:hostname], state[:username])
         print '(ssh ready) on host #{state[:hostname]} with user #{state[:username]}\n'
         debug("ssh:create '#{state[:hostname]}'")
       end

       def destroy(state)
         print 'To destroy server shut down the server natively.\n'
         print 'in your cloud or virtualisation console etc.\n'
         debug("ssh:destroy '#{state[:hostname]}'")
       end

    end
  end
end
