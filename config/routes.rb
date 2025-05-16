Rails.application.routes.draw do
  resources :report
  resources :time_entry
  resources :time_plan
  resources :time_plan_report
  resources :time_entry_plan
  resources :time_entry_report
  resources :user

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
 #I am not sure how to make messanger chat in my site
  get '/message', to: "message_#index"
  post '/message', to: "message_#create"
  get '/message/:id', to: "message_#show"
  get '/message/:id/edit', to: "message_#edit"
  patch '/message/:id', to: "message_#update"
  delete '/message/:id', to: "message_#destroy"

  get '/stat/', to: 'stat#index'
  get '/stat/:id', to: 'stat#show'

  get '/plan/', to: 'plan#index'
  get '/plan/new', to: 'plan#new'
  get '/plan/:id', to: 'plan#show'
  get '/plan/:id/edit', to: 'plan#edit'
  get '/plan/:id', to: 'plan#destroy'

  get '/settings/', to: 'settings#index'

  get '/login_screen/', to: 'login_screen#index'
  post '/login_screen/', to: 'login_screen#create'

  root to: "main#index"

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
