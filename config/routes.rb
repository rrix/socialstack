RebelFoundation::Application.routes.draw do

  resources :cloud

  root to: 'pages#index'
end
