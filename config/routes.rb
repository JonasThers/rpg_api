Rails.application.routes.draw do
  root "characters#index"

  get "/characters", to: "characters#index"
  get "/characters/:id", to: "characters#show"
end
