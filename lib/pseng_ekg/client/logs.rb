module PsengEkg
  class Client
    module Logs

      def log_index(task_id, params = {})
        soft_fail do
          @response = self.class.get("/api/v1/tasks/#{task_id}/logs.json", query: params)
        end
      end

      def log_show(task_id, log_id, params = {})
        soft_fail do
          @response = self.class.get("/api/v1/tasks/#{task_id}/logs/#{log_id}.json", query: params)
        end
      end

      def log_create(task_id, params = {})
        soft_fail do
          @response = self.class.post("/api/v1/tasks/#{task_id}/logs.json", query: params)
        end
      end

      def log_update(task_id, log_id, params = {})
        soft_fail do
          @response = self.class.put("/api/v1/tasks/#{task_id}.json", query: params)
        end
      end

      def log_destroy(task_id, params = {})
        soft_fail do
          @response = self.class.destroy("/api/v1/tasks/#{task_id}.json", query: params)
        end
      end

    end
  end
end
