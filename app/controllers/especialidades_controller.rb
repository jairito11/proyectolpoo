class EspecialidadesController < ApplicationController
  def inicio
    @especialidades = Especialidad.all
  end

  def mostrar
    @especialidad = Especialidad.find(params[:id])
  end

  def nuevo
    @especialidad = Especialidad.new
    @carreras = Carrera.all   
  end

  def crear
    @especialidad = Especialidad.new(
      clave: params[:especialidad][:clave],
      nombre: params[:especialidad][:nombre],
      descripcion: params[:especialidad][:descripcion],
      carrera_id: params[:especialidad][:carrera_id])
    @carreras = Carrera.all

    respond_to do |format|
      if @especialidad.save
        format.html { redirect_to inicio_especialidades_path, notice: 'Especialidad creada exitósamente' }
      else
        format.html { render :nuevo }
      end
    end
  end

  def editar
    @especialidad = Especialidad.where('id = ?', params[:id]).first
    @carreras = Carrera.all
  end

  def actualizar
    @especialidad = Especialidad.find(params[:especialidad][:id])
    @carreras = Carrera.all

    respond_to do |format|
      if @especialidad.update(
        clave: params[:especialidad][:clave],
        nombre: params[:especialidad][:nombre],
        descripcion: params[:especialidad][:descripcion],
        carrera_id: params[:especialidad][:carrera_id])

        format.html { redirect_to mostrar_especialidades_path(@especialidad.id), notice: 'Especialidad actualizada exitosamente' }
      else
        format.html { render :nuevo }
      end
    end
  end

  def eliminar
      @especialidad = Especialidad.find(params[:id])
      respond_to do |format|
      if @especialidad.destroy
        format.html { redirect_to inicio_especialidades_path, notice: 'Especialidad eliminada exitósamente' }
      else
        format.html { redirect_to inicio_especialidades_path, notice: 'Especialidad no se pudo eliminar' }
      end
    end
  end

end
