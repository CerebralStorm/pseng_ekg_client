Rails.application.routes.draw do
  match '/pseng_log' => 'pseng_ekg/logs#retrieve'
end