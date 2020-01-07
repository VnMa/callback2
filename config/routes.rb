Rails.application.routes.draw do

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  post 'callbacks', to: "callbacks#create"
  get 'callbacks', to: "callbacks#index"

end
