module PsengEkg
  class Client
    module Applications

      def application_index(options = {})
        self.class.get("/api/v1/applications.json", options)
      end

      def application_show(application_id, options = {})
        self.class.get("/api/v1/applications/#{application_id}.json", options)
      end

      def application_create(options = {})
        self.class.post("/api/v1/applications.json", options)
      end

      def application_update(applictation_id, options = {})
        self.class.patch("/api/v1/applications/#{application_id}.json", options)
      end

      def application_destroy(applictation_id, options = {})
        self.class.destroy("/api/v1/applications.json", options)
      end

    end
  end
end
