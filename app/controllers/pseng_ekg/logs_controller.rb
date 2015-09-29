  class PsengEkg::LogsController < ApplicationController
    def retrieve
      begin
        file_contents = File.read("#{Rails.root}/log/pseng_ekg.log")
        render json: {log: file_contents}, status: 200
      rescue
        render json: {errors: ['File not found']}, status: 404
      end
    end
  end