Rails.application.routes.draw do
  get 'roles/inicio'
  resources :carreras
  resources :idiomas
  resources :generos
  resources :editoriales
  resources :autores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  ##########Roles
  match '/roles' => 'roles#inicio',via: :get, :as => :inicio_rol
  match '/roles/:id/mostrar' => 'roles#mostrar', via: :get, :as => :mostrar_rol
  match '/roles/nuevo' => 'roles#nuevo', via: :get, :as => :nuevo_rol
  match '/roles/crear' => 'roles#crear', via: :post, :as => :crear_rol
  match '/roles/:id/editar' => 'roles#editar', via: :get, :as => :editar_rol
  match '/roles/actualizar' => 'roles#actualizar', via: :patch, :as => :actualizar_rol
  match '/roles/:id/eliminar' => 'roles#eliminar', via: :delete, :as => :eliminar_rol
  ###########
end
