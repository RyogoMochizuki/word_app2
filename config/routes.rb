Rails.application.routes.draw do

  get 'main', to: 'users#show'

  get 'mains/question'
  get 'mains/maintenance'
  get 'mains/rank'

  get 'question_similer_words/new'

  get 'questions/index'
  post 'question/index', to: 'questions#jugde'
  get 'questions/new'
  get 'questions/maintenance'
  post 'questions/jugde'

  get 'maintenances/new'
  get 'maintenances/search'
  get 'maintenances/edit'
  get 'maintenances/delete'

  match '/maintenances_create' => 'maintenances#create', via: [ :post ]

  root to: 'users#index'

  get 'sessions/new'

  # get 'users/index'

  # get 'users/new'

  # get 'users/create'

  # get 'users/edit'

  # get 'users/show'

  # get 'users/update'

  # get 'users/destroy'
  resources :users 

  # ログイン / ログアウト
  get     'login',   to: 'sessions#new'
  post    'login',   to: 'sessions#create'
  delete  'logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
