module SensuPluginsFilemaker
  class Server
    def self.server_running?
      %(ps aux | grep [f]mserverd)
      $?.exitcode == 0
    end

    def self.cwp_running?
      %(ps aux | grep [f]mscwpc)
      $?.exitcode == 0
    end

    def self.admin_server_running?
      %(ps aux | grep [f]msased)
      $?.exitcode == 0
    end
  end
end
