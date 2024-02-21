Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'queries/index'
      post 'queries/create'
      get '/show/:id', to: 'queries#show'
      delete '/destroy/:id', to: 'queries#destroy'
      get 'queries/availability', to: 'queries#check_availability'
      get 'queries/create_job', to: 'queries#create_job' #must be a POST when API_KEY is set
      get 'queries/query_job', to: 'queries#query_job'
      get 'queries/create_invoice', to: 'queries#create_invoice' #must be a POST when API_KEY is set


    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
  get '/availability' => 'homepage#availability'
  get '/create_job' => 'homepage#create_job'
  get '/get_job' => 'homepage#availability'
  get '/create_invoice' => 'homepage#availability'
end
