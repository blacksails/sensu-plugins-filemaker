module SensuPluginsFilemaker
  class Server
    def self.server_running?
      %x(ps aux | grep [f]mserverd)
      $?.exitstatus == 0
    end

    def self.cwp_running?
      %x(ps aux | grep [f]mscwpc)
      $?.exitstatus == 0
    end

    def self.admin_server_running?
      %x(ps aux | grep [f]msased)
      $?.exitstatus == 0
    end
  end
end
