CountryFactsApp::Application.routes.draw do
  
  root to: 'Continents#index'

  resources :countries
  resources :continents

  

end
