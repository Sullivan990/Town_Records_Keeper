TownRecords::Application.routes.draw do
  resources :birth_records, only: [:new, :create]

end
