module PsengEkg
  class Client
    module Tasks

      def task_index(application_id, options = {})
        self.class.get("/api/v1/applications/#{application_id}/tasks.json", options)
      end

      def task_show(application_id, task_id, options = {})
        self.class.get("/api/v1/applications/#{application_id}/tasks/#{task_id}.json", options)
      end

      def task_create(application_id, options = {})
        self.class.post("/api/v1/applications/#{application_id}/tasks.json", options)
      end

      def task_update(applictation_id, task_id, options = {})
        self.class.patch("/api/v1/applications/#{application_id}/tasks/#{task_id}.json", options)
      end

      def task_destroy(applictation_id, task_id, options = {})
        self.class.destroy("/api/v1/applications/#{application_id}/tasks/#{task_id}.json", options)
      end

    end
  end
end
