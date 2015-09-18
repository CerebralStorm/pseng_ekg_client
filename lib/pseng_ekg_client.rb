require "pseng_ekg_client/version"

module PsengEkgClient
  class Api
    include HTTParty
    VALID_ACTIONS = %w(index show create update destroy)
    VALID_RECORD_TYPES = %w(application task)

    def initialize(base_uri)
      self.base_uri base_uri
    end

    def send_message(record_type, action, payload)
      raise 'Invalid Action' unless VALID_ACTIONS.include?(action)
      raise 'Invalid Record Type' unless VALID_RECORD_TYPES.include?(action)

      case action
      when 'index'
        self.class.get("/#{record_type}s.json", payload)
      when 'show'
        self.class.get("/#{record_type}s/#{payload.id}.json", payload)
      when 'create'
        self.class.post("/#{record_type}s.json", payload)
      when 'update'
        self.class.patch("/#{record_type}s/#{payload.id}.json", payload)
      when 'destroy'
        self.class.delete("/#{record_type}s/#{payload.id}.json", payload)
      end
    end
  end
end
