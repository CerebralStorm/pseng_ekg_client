require "pseng_ekg/version"
require "pseng_ekg/client/applications"
require "pseng_ekg/client/tasks"
require 'httparty'

module PsengEkg
  class Client
    include HTTParty
    include Applications
    include Tasks

    def initialize(base_uri)
      self.class.base_uri base_uri
    end
  end
end
