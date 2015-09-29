module PsengEkg
  class Client
    module Errors

      def error_index(task_id, params = {})
        self.class.get("/api/v1/tasks/#{task_id}/errors.json", query: params)
      end

      def error_show(task_id, error_id, params = {})
        self.class.get("/api/v1/tasks/#{task_id}/errors/#{error_id}.json", query: params)
      end

      def error_create(task_id, params = {})
        self.class.post("/api/v1/tasks/#{task_id}/errors.json", query: params)
      end

      def error_update(task_id, error_id, params = {})
        self.class.put("/api/v1/tasks/#{task_id}.json", query: params)
      end

      def error_destroy(task_id, params = {})
        self.class.destroy("/api/v1/tasks/#{task_id}.json", query: params)
      end

    end
  end
end
