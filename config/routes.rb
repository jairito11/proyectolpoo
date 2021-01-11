Rails.application.routes.draw do
  #get 'prestamos/inicio'
  #get 'prestamos/mostrar'
  #get 'prestamos/nuevo'
  #get 'prestamos/crear'
  #get 'prestamos/editar'
  #get 'prestamos/actualizar'
  #get 'prestamos/eliminar'
  #get 'personas/inicio'
  #get 'personas/mostrar'
  #get 'personas/nuevo'
  #get 'personas/crear'
  #get 'personas/editar'
  #get 'personas/actualizar'
  #get 'personas/eliminar'
  #get 'inicio/mostrar'
  #get 'inicio/nuevo'
  #get 'inicio/crear'
  #get 'inicio/editar'
  #get 'inicio/actualizar'
  #get 'inicio/eliminar'
  #get 'especialidades/inicio'
  #get 'especialidades/mostrar'
  #get 'especialidades/nuevo'
  #get 'especialidades/crear'
  #get 'especialidades/editar'
  #get 'especialidades/actualizar'
  #get 'especialidades/eliminar'
  #get 'roles/inicio'
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
  ###########Especialidades
  match '/especialidades' => 'especialidades#inicio',via: :get, :as => :inicio_especialidades
  match '/especialidades/:id/mostrar' => 'especialidades#mostrar', via: :get, :as => :mostrar_especialidades
  match '/especialidades/nuevo' => 'especialidades#nuevo', via: :get, :as => :nuevo_especialidades
  match '/especialidades/crear' => 'especialidades#crear', via: :post, :as => :crear_especialidades
  match '/especialidades/:id/editar' => 'especialidades#editar', via: :get, :as => :editar_especialidades
  match '/especialidades/actualizar' => 'especialidades#actualizar', via: :patch, :as => :actualizar_especialidades
  match '/especialidades/:id/eliminar' => 'especialidades#eliminar', via: :delete, :as => :eliminar_especialidades
  ############Libros
  match '/libros' => 'libros#inicio',via: :get, :as => :inicio_libros
  match '/libros/:id/mostrar' => 'libros#mostrar', via: :get, :as => :mostrar_libros
  match '/libros/nuevo' => 'libros#nuevo', via: :get, :as => :nuevo_libros
  match '/libros/crear' => 'libros#crear', via: :post, :as => :crear_libros
  match '/libros/:id/editar' => 'libros#editar', via: :get, :as => :editar_libros
  match '/libros/actualizar' => 'libros#actualizar', via: :patch, :as => :actualizar_libros
  match '/libros/:id/eliminar' => 'libros#eliminar', via: :delete, :as => :eliminar_libros
  #############Personas
  match '/personas' => 'personas#inicio',via: :get, :as => :inicio_personas
  match '/personas/:id/mostrar' => 'personas#mostrar', via: :get, :as => :mostrar_personas
  match '/personas/nuevo' => 'personas#nuevo', via: :get, :as => :nuevo_personas
  match '/personas/crear' => 'personas#crear', via: :post, :as => :crear_personas
  match '/personas/:id/editar' => 'personas#editar', via: :get, :as => :editar_personas
  match '/personas/actualizar' => 'personas#actualizar', via: :patch, :as => :actualizar_personas
  match '/personas/:id/eliminar' => 'personas#eliminar', via: :delete, :as => :eliminar_personas
  ##############Prestamos
  match '/prestamos' => 'prestamos#inicio',via: :get, :as => :inicio_prestamos
  match '/prestamos/:id/mostrar' => 'prestamos#mostrar', via: :get, :as => :mostrar_prestamos
  match '/prestamos/nuevo' => 'prestamos#nuevo', via: :get, :as => :nuevo_prestamos
  match '/prestamos/crear' => 'prestamos#crear', via: :post, :as => :crear_prestamos
  match '/prestamos/:id/editar' => 'prestamos#editar', via: :get, :as => :editar_prestamos
  match '/prestamos/actualizar' => 'prestamos#actualizar', via: :patch, :as => :actualizar_prestamos
  match '/prestamos/:id/eliminar' => 'prestamos#eliminar', via: :delete, :as => :eliminar_prestamos
end
