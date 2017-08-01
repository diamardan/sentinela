Rails.application.routes.draw do
  devise_for :users, :controllers =>{:registrations => 'accesos'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :admin
	resources :bitacoras do
    get 'listar', :on => :collection
  end
	resources :tutoriales
  resources :casas
	resources :calles
	resources :numeros_casas
	resources :sentinela_usuarios
	resources :visitas_registro
	resources :fraccionamientos
  root :to => 'welcome#index'
  
end

