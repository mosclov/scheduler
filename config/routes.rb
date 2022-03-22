Rails.application.routes.draw do
  get "work_orders", to: "work_orders#index"
  root to: "work_orders#index"
end
