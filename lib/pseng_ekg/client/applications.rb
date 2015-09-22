module PsengEkg
  class Client
    module Applications

      def application_index(params = {})
        self.class.get("/api/v1/applications.json", query: params)
      end

      def application_show(application_id, params = {})
        self.class.get("/api/v1/applications/#{application_id}.json", query: params)
      end

      def application_create(params = {})
        self.class.post("/api/v1/applications.json", query: params)
      end

      def application_update(applictation_id, params = {})
        self.class.patch("/api/v1/applications/#{application_id}.json", query: params)
      end

      def application_destroy(applictation_id, params = {})
        self.class.destroy("/api/v1/applications.json", query: params)
      end

    end
  end
end
