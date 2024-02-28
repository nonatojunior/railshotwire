Rails.application.routes.draw do
  get "home/index"
  get "other/index"
  root to: "home#index"
end
