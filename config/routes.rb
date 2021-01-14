Rails.application.routes.draw do
=begin  
  get 'sesiones/login'
  get 'edificios/inicio'
  get 'edificios/mostrar'
  get 'edificios/nuevo'
  get 'edificios/editar'
  get 'proveedores/inicio'
  get 'proveedores/mostrar'
  get 'proveedores/nuevo'
  get 'proveedores/editar'
  get 'presidentes/inicio'
  get 'presidentes/mostrar'
  get 'presidentes/nuevo'
  get 'presidentes/editar'
  get 'coordinadores/inicio'
  get 'coordinadores/mostrar'
  get 'coordinadores/nuevo'
  get 'coordinadores/editar'
  get 'asociaciones/inicio'
  get 'asociaciones/mostrar'
  get 'asociaciones/nuevo'
  get 'asociaciones/editar'
=end
  resources :carreras
  resources :idiomas
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
  ##########Asociaciones
  match '/asociaciones' => 'asociaciones#inicio',via: :get, :as => :inicio_asociaciones
  match '/asociaciones/:id/mostrar' => 'asociaciones#mostrar', via: :get, :as => :mostrar_asociaciones
  match '/asociaciones/nuevo' => 'asociaciones#nuevo', via: :get, :as => :nuevo_asociaciones
  match '/asociaciones/crear' => 'asociaciones#crear', via: :post, :as => :crear_asociaciones
  match '/asociaciones/:id/editar' => 'asociaciones#editar', via: :get, :as => :editar_asociaciones
  match '/asociaciones/actualizar' => 'asociaciones#actualizar', via: :patch, :as => :actualizar_asociaciones
  match '/asociaciones/:id/eliminar' => 'asociaciones#eliminar', via: :delete, :as => :eliminar_asociaciones
  ##########Coordinadores
  match '/coordinadores' => 'coordinadores#inicio',via: :get, :as => :inicio_coordinadores
  match '/coordinadores/:id/mostrar' => 'coordinadores#mostrar', via: :get, :as => :mostrar_coordinadores
  match '/coordinadores/nuevo' => 'coordinadores#nuevo', via: :get, :as => :nuevo_coordinadores
  match '/coordinadores/crear' => 'coordinadores#crear', via: :post, :as => :crear_coordinadores
  match '/coordinadores/:id/editar' => 'coordinadores#editar', via: :get, :as => :editar_coordinadores
  match '/coordinadores/actualizar' => 'coordinadores#actualizar', via: :patch, :as => :actualizar_coordinadores
  match '/coordinadores/:id/eliminar' => 'coordinadores#eliminar', via: :delete, :as => :eliminar_coordinadores
  ##########Presidentes
  match '/presidentes' => 'presidentes#inicio',via: :get, :as => :inicio_presidentes
  match '/presidentes/:id/mostrar' => 'presidentes#mostrar', via: :get, :as => :mostrar_presidentes
  match '/presidentes/nuevo' => 'presidentes#nuevo', via: :get, :as => :nuevo_presidentes
  match '/presidentes/crear' => 'presidentes#crear', via: :post, :as => :crear_presidentes
  match '/presidentes/:id/editar' => 'presidentes#editar', via: :get, :as => :editar_presidentes
  match '/presidentes/actualizar' => 'presidentes#actualizar', via: :patch, :as => :actualizar_presidentes
  match '/presidentes/:id/eliminar' => 'presidentes#eliminar', via: :delete, :as => :eliminar_presidentes
  ##########Proveedores
  match '/proveedores' => 'proveedores#inicio',via: :get, :as => :inicio_proveedores
  match '/proveedores/:id/mostrar' => 'proveedores#mostrar', via: :get, :as => :mostrar_proveedores
  match '/proveedores/nuevo' => 'proveedores#nuevo', via: :get, :as => :nuevo_proveedores
  match '/proveedores/crear' => 'proveedores#crear', via: :post, :as => :crear_proveedores
  match '/proveedores/:id/editar' => 'proveedores#editar', via: :get, :as => :editar_proveedores
  match '/proveedores/actualizar' => 'proveedores#actualizar', via: :patch, :as => :actualizar_proveedores
  match '/proveedores/:id/eliminar' => 'proveedores#eliminar', via: :delete, :as => :eliminar_proveedores
  ##########Edificios
  match '/edificios' => 'edificios#inicio',via: :get, :as => :inicio_edificios
  match '/edificios/:id/mostrar' => 'edificios#mostrar', via: :get, :as => :mostrar_edificios
  match '/edificios/nuevo' => 'edificios#nuevo', via: :get, :as => :nuevo_edificios
  match '/edificios/crear' => 'edificios#crear', via: :post, :as => :crear_edificios
  match '/edificios/:id/editar' => 'edificios#editar', via: :get, :as => :editar_edificios
  match '/edificios/actualizar' => 'edificios#actualizar', via: :patch, :as => :actualizar_edificios
  match '/edificios/:id/eliminar' => 'edificios#eliminar', via: :delete, :as => :eliminar_edificios
  ##########Login
  match '/login' => 'sesiones#login', via: :get, :as => :login
  match '/login' => 'sesiones#validar_usuario', via: :post, :as => :login_post
  match '/cerrar_sesion' => 'sesiones#cerrar_sesion', via: :get, :as => :cerrar_sesion
  
end