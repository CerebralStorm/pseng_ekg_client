module PsengEkg
  class Client
    module Tasks

      def task_index(application_id, params = {})
        soft_fail do
          @response = self.class.get("/api/v1/applications/#{application_id}/tasks.json", query: params)
        end
      end

      def task_show(application_id, task_id, params = {})
        soft_fail do
          @response = self.class.get("/api/v1/applications/#{application_id}/tasks/#{task_id}.json", query: params)
        end
      end

      def task_create(application_id, params = {})
        soft_fail do
          @response = self.class.post("/api/v1/applications/#{application_id}/tasks.json", query: params)
        end
      end

      def task_update(application_id, task_id, params = {})
        soft_fail do
          @response = self.class.put("/api/v1/applications/#{application_id}/tasks/#{task_id}.json", query: params)
        end
      end

      def task_destroy(application_id, task_id, params = {})
        soft_fail do
          @response = self.class.destroy("/api/v1/applications/#{application_id}/tasks/#{task_id}.json", query: params)
        end
      end

    end
  end
end
