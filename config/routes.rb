Rails.application.routes.draw do
  root to: 'event_pages#index' 

  # get 'university_pages/index'
  # get 'university_pages/new'
  # get 'team_pages/index'
  # get 'team_pages/show'
  # get 'team_pages/new'
  # get 'team_pages/edit'
  # get 'event_pages/index'
  # get 'event_pages/new'
  # get 'event_pages/edit'
  # get 'event_pages/show'
  devise_for :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :event_pages #, only: [:index, :new, :edit, :show, :create, :update,:]
  resources :university_pages, only: [:new, :index, :create,:update ]

  # Rails.application.routes.draw do
  #   devise_for :users, controllers: {
  #     sessions: 'users/sessions'
  #   }
  # end

end
