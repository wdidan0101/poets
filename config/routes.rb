Rails.application.routes.draw do

  get 'welcome/index'

  #root 'poets#index'

  ### POET ROUTES ##################################

  get 'poets/' => 'poets#index'
  post 'poets/' => 'poets#create'

  get 'poets/new' => 'poets#new', as: :new_poet
  get 'poets/:id/edit' => 'poets#edit', as: :edit_poet

  get 'poets/:id' => 'poets#show', as: :poet
  patch 'poets/:id' => 'poets#update'
  put 'poets/:id' => 'poets#update'
  delete 'poets/:id' => 'poets#destroy'

  ### POEM ROUTES ##################################

  get 'poets/:poet_id/poems/' => 'poems#index', as: :poems
  post 'poets/:poet_id/poems/' => 'poems#create'

  get 'poets/:poet_id/poems/new' => 'poems#new', as: :new_poem
  get 'poets/:poet_id/poems/:id/edit' => 'poems#edit', as: :edit_poem

  get 'poets/:poet_id/poems/:id' => 'poems#show', as: :poem
  patch 'poets/:poet_id/poems/:id' => 'poems#update'
  put 'poets/:poet_id/poems/:id' => 'poems#update'
  delete 'poets/:poet_id/poems/:id' => 'poems#destroy'

  ### USERS ROUTES ###################################

  #root 'users#new' 

  get 'signup/' => 'users#new', as: :signup
  get 'users/new' => 'users#new'
  post 'users/' => 'users#create'

  ### SESSIONS ROUTES #################################

  root 'sessions#index'

  get '/login' => 'sessions#new', as: :sessions
  post '/login' => 'sessions#create'  
  delete '/logout' =>'sessions#destroy', as: :log_out

  ### WELCOME ROUTES ###################################

  get '/welcome/:user_id' => 'welcome#index', as: :welcome

end







