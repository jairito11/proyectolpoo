class RolesController < ApplicationController
  def inicio
    @roles = Rol.all
  end

  def mostrar
    @rol = Rol.find(params[:id])
  end

  def nuevo
    @rol = Rol.new
  end

  def crear
    @rol = Rol.new(rol: params[:rol][:rol],
      descripcion: params[:rol][:descripcion],
      zonaEstacionamiento: params[:rol][:zonaEstacionamiento],
      edificio: params[:rol][:edificio],
      fechaIngreso: params[:rol][:fechaIngreso],
      horaIngreso: params[:rol][:horaIngreso])

    respond_to do |format|
      if @rol.save
        format.html { redirect_to inicio_rol_path, notice: 'Rol creado exitosamente' }
      else
        format.html { render :nuevo }
      end
    end
  end

  def editar
    @rol = Rol.where('id = ?', params[:id]).first
  end
  def actualizar
    @rol = Rol.find(params[:rol][:id])
    respond_to do |format|
      if @rol.update(rol: params[:rol][:rol],
      descripcion: params[:rol][:descripcion],
      zonaEstacionamiento: params[:rol][:zonaEstacionamiento],
      edificio: params[:rol][:edificio],
      fechaIngreso: params[:rol][:fechaIngreso],
      horaIngreso: params[:rol][:horaIngreso])
        format.html { redirect_to mostrar_rol_path(@rol.id), notice: 'Rol actualizando exitosamente' }
      else
        format.html { render :nuevo }
      end
    end
  end

  def eliminar
      @rol = Rol.find(params[:id])
      respond_to do |format|
      if @rol.destroy
        format.html { redirect_to inicio_rol_path, notice: 'Rol eliminado exitósamente' }
      else
        format.html { redirect_to paises_inicio_path, notice: 'Rol no se pudo eliminar' }
      end
    end
  end

end