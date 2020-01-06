Rails.application.routes.draw do

  post 'callbacks', to: "callbacks#create"
  get 'callbacks', to: "callbacks#index"

end
