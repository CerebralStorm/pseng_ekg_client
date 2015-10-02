require 'pseng_ekg/engine'
require "pseng_ekg/version"
require "pseng_ekg/client/applications"
require "pseng_ekg/client/tasks"
require "pseng_ekg/client/errors"
require "pseng_ekg/client/logs"
require 'httmultiparty'

module PsengEkg
  class Client
    include HTTMultiParty
    include Applications
    include Tasks
    include Errors
    include Logs

    attr_accessor :logger

    def initialize(base_uri)
      self.class.base_uri base_uri
      @logger = ::Logger.new("#{Rails.root}/log/pseng_ekg.log")
    end


    def soft_fail
      begin
        yield
      rescue => e
        logger.error e
      end
    end
  end
end
