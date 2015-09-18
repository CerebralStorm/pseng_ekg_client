require "pseng_ekg_client/version"
require 'httparty'

module PsengEkgClient
  class Api
    include HTTParty
    VALID_ACTIONS = %w(index show create update destroy)
    VALID_RECORD_TYPES = %w(application task)

    def initialize(base_uri)
      self.class.base_uri base_uri
    end

    def send_message(record_type, action, payload)
      raise 'Invalid Action' unless VALID_ACTIONS.include?(action)
      raise 'Invalid Record Type' unless VALID_RECORD_TYPES.include?(record_type)

      options = {
        body: payload.to_json,
        headers: { 'Content-Type' => 'application/json' }
      }

      case action
      when 'index'
        self.class.get("/#{record_type}s.json", options)
      when 'show'
        self.class.get("/#{record_type}s/#{payload.id}.json", options)
      when 'create'
        self.class.post("/#{record_type}s.json", options)
      when 'update'
        self.class.patch("/#{record_type}s/#{payload.id}.json", options)
      when 'destroy'
        self.class.delete("/#{record_type}s/#{payload.id}.json", options)
      end
    end
  end
end
