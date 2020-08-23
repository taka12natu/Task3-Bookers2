Rails.application.routes.draw do
  
  devise_for :users, controllers: {   registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
  root 'home#top'
  
  resources :users, only: [:show, :index, :new, :edit, :update]
  resources :books, only: [:create, :show, :index, :destroy, :edit, :update]

  get 'home/about', to: 'home#about'


end
