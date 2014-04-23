TownRecords::Application.routes.draw do
  resources :death_records, only: [:index, :new, :create]

  resources :birth_records, only: [:index, :new, :create]

end
