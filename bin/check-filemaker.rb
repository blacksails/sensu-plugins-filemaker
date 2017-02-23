#!/usr/bin/env ruby

require 'sensu-plugin/check/cli'
require 'sensu-plugins-filemaker'

class CheckFilemaker < Sensu::Plugin::Check::CLI
  def run
    unless SensuPluginsFilemaker.Server.server_running?
      critical "Filemaker server is not running"
    end
    unless SensuPluginsFilemaker.Server.cwp_running?
      critical "Filemaker CWP is not running"
    end
    unless SensuPluginsFilemaker.Server.admin_server_running?
      warning "Filemaker admin server is not running"
    end
    ok "Filemaker and it's services are running"
  end
end
