TownRecords::Application.routes.draw do
  resources :birth_records, only: [:index, :new, :create]

end
