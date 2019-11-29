Rails.application.routes.draw do
  # get 'teams/index'
  # get 'teams/show'
  root 'event_pages#index' 

  devise_for :teams
  # teamをログアウトする際に必要になる　デフォルでuserモデルにルートが指定されてしまうから
  devise_scope :team do
    get '/teams/sign_out' => 'devise/sessions#destroy'
  end
  # teamの一覧を作成する為に必要
  resources :teams, :only => [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :event_pages 
  resources :university_pages#, only: [:new, :index, :create,:update, :edit, :destroy ]

  # Rails.application.routes.draw do
  # get 'teams/index'
  # get 'teams/show'
  #   devise_for :users, controllers: {
  #     sessions: 'users/sessions'
  #   }
  # end

end
