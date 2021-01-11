class PersonasController < ApplicationController
  def inicio
    @personas = Persona.all
  end

  def mostrar
    @persona = Persona.find(params[:id])
  end

  def nuevo
    @persona = Persona.new
    @roles = Rol.all
    @especialidades = Especialidad.all
  end

  def crear
    @persona = Persona.new(
      curp: params[:persona][:curp],
      nombre: params[:persona][:nombre],
      paterno: params[:persona][:paterno],
      materno: params[:persona][:materno],
      sexo: params[:persona][:sexo],
      telefono: params[:persona][:telefono],
      direccion: params[:persona][:direccion],
      rol_id: params[:persona][:rol_id],
      especialidad_id: params[:persona][:especialidad_id]
      )

    respond_to do |format|
      if @persona.save
        format.html { redirect_to inicio_personas_path, notice: 'Persona creada exitósamente' }
      else
        format.html { render :nuevo }
      end
    end
  end

  def editar
    @persona = Persona.where('id = ?', params[:id]).first
    @roles = Rol.all
    @especialidades = Especialidad.all
  end

  def actualizar
    @persona = Persona.find(params[:persona][:id])

    respond_to do |format|
      if @persona.update(
        curp: params[:persona][:curp],
        nombre: params[:persona][:nombre],
        paterno: params[:persona][:paterno],
        materno: params[:persona][:materno],
        sexo: params[:persona][:sexo],
        telefono: params[:persona][:telefono],
        direccion: params[:persona][:direccion],
        rol_id: params[:persona][:rol_id],
        especialidad_id: params[:persona][:especialidad_id]
      )

        format.html { redirect_to mostrar_personas_path(@persona.id), notice: 'Persona actualizada exitosamente' }
      else
        format.html { render :nuevo }
      end
    end
  end

  def eliminar
    @persona = Persona.find(params[:id])
      respond_to do |format|
      if @persona.destroy
        format.html { redirect_to inicio_personas_path, notice: 'Persona eliminada exitósamente' }
      else
        format.html { redirect_to inicio_personas_path, notice: 'Persona no se pudo eliminar' }
      end
    end 
  end
  
end
