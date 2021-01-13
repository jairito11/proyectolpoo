class PresidentesController < ApplicationController
def inicio
    @presidentes = Presidente.all
  end

  def mostrar
    @presidente = Presidente.find(params[:id])
  end

  def nuevo
    @presidente = Presidente.new   
  end

  def crear
    @presidente = Presidente.new(
      predecesor: params[:presidente][:predecesor],
      nacimiento: params[:presidente][:nacimiento],
      residencia: params[:presidente][:residencia],
      nacionalidad: params[:presidente][:nacionalidad],
      religion: params[:presidente][:religion],
      educadoEn: params[:presidente][:educadoEn],
      ocupacion: params[:presidente][:ocupacion],
      distinciones: params[:presidente][:distinciones])
    
    respond_to do |format|
      if @presidente.save
        format.html { redirect_to inicio_presidentes_path, notice: 'Presidente creado exitósamente' }
      else
        format.html { redirect_to inicio_presidentes_path, notice: 'No pudo crearse el presidente' }
      end
    end
  end

  def editar
    @presidente = Presidente.where('id = ?', params[:id]).first
  end

  def actualizar
    @presidente = Presidente.find(params[:presidente][:id])

    respond_to do |format|
      if @presidente.update(
      predecesor: params[:presidente][:predecesor],
      nacimiento: params[:presidente][:nacimiento],
      residencia: params[:presidente][:residencia],
      nacionalidad: params[:presidente][:nacionalidad],
      religion: params[:presidente][:religion],
      educadoEn: params[:presidente][:educadoEn],
      ocupacion: params[:presidente][:ocupacion],
      distinciones: params[:presidente][:distinciones])

        format.html { redirect_to mostrar_presidentes_path(@presidente.id), notice: 'Presidente actualizado exitosamente' }
      else
        format.html { redirect_to inicio_presidentes_path, notice: 'No pudo actualizarse el presidente' }
      end
    end
  end

  def eliminar
      @presidente = Presidente.find(params[:id])
      respond_to do |format|
      if @presidente.destroy
        format.html { redirect_to inicio_presidentes_path, notice: 'Presidente eliminado exitósamente' }
      else
        format.html { redirect_to inicio_presidentes_path, notice: 'Presidente no se pudo eliminar' }
      end
    end
  end
end
