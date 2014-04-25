TownRecords::Application.routes.draw do
  devise_for :users
  resources :death_records, only: [:index, :new, :create]

  resources :birth_records, only: [:index, :new, :create]

end
