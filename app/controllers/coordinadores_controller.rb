class CoordinadoresController < ApplicationController
def inicio
    @coordinadores = Coordinador.all
  end

  def mostrar
    @coordinador = Coordinador.find(params[:id])
  end

  def nuevo
    @coordinador = Coordinador.new   
  end

  def crear
    @coordinador = Coordinador.new(
      correo: params[:coordinador][:correo],
      nombre: params[:coordinador][:nombre],
      paterno: params[:coordinador][:paterno],
      materno: params[:coordinador][:materno],
      direccion: params[:coordinador][:direccion],
      telefonoCelular: params[:coordinador][:telefonoCelular],
      telefonoCasa: params[:coordinador][:telefonoCasa],
      especialidad: params[:coordinador][:especialidad])
    
    respond_to do |format|
      if @coordinador.save
        format.html { redirect_to inicio_coordinadores_path, notice: 'Coordinador creado exitósamente' }
      else
        format.html { redirect_to inicio_coordinadores_path, notice: 'No pudo crearse el coordinador' }
      end
    end
  end

  def editar
    @coordinador = Coordinador.where('id = ?', params[:id]).first
  end

  def actualizar
    @coordinador = Coordinador.find(params[:coordinador][:id])

    respond_to do |format|
      if @coordinador.update(
      correo: params[:coordinador][:correo],
      nombre: params[:coordinador][:nombre],
      paterno: params[:coordinador][:paterno],
      materno: params[:coordinador][:materno],
      direccion: params[:coordinador][:direccion],
      telefonoCelular: params[:coordinador][:telefonoCelular],
      telefonoCasa: params[:coordinador][:telefonoCasa],
      especialidad: params[:coordinador][:especialidad])

        format.html { redirect_to mostrar_coordinadores_path(@coordinador.id), notice: 'Coordinador actualizado exitosamente' }
      else
        format.html { redirect_to inicio_coordinadores_path, notice: 'No pudo actualizarse el Coordinador' }
      end
    end
  end

  def eliminar
      @coordinador = Coordinador.find(params[:id])
      respond_to do |format|
      if @coordinador.destroy
        format.html { redirect_to inicio_coordinadores_path, notice: 'Coordinador eliminado exitósamente' }
      else
        format.html { redirect_to inicio_coordinadores_path, notice: 'Coordinador no se pudo eliminar' }
      end
    end
  end
end
