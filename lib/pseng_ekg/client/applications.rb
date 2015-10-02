module PsengEkg
  class Client
    module Applications

      def application_index(params = {})
        soft_fail do
          @response = self.class.get("/api/v1/applications.json", query: params)
        end
      end

      def application_show(application_id, params = {})
        soft_fail do
          @response = self.class.get("/api/v1/applications/#{application_id}.json", query: params)
        end
      end

      def application_create(params = {})
        soft_fail do
          @response = self.class.post("/api/v1/applications.json", query: params)
        end
      end

      def application_update(applictation_id, params = {})
        soft_fail do
          @response = self.class.put("/api/v1/applications/#{application_id}.json", query: params)
        end
      end

      def application_destroy(applictation_id, params = {})
        soft_fail do
          @response = self.class.destroy("/api/v1/applications.json", query: params)
        end
      end

    end
  end
end
