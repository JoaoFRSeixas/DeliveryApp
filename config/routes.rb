Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'queries/index'
      post 'queries/create'
      get '/show/:id', to: 'queries#show'
      delete '/destroy/:id', to: 'queries#destroy'
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
  get '/availability' => 'homepage#availability'
end
