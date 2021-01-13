class AsociacionesController < ApplicationController
def inicio
    @asociaciones = Asociacion.all
  end

  def mostrar
    @asociacion = Asociacion.find(params[:id])
  end

  def nuevo
    @asociacion = Asociacion.new   
  end

  def crear
    @asociacion = Asociacion.new(
      codigo: params[:asociacion][:codigo],
      acronimo: params[:asociacion][:acronimo],
      genero: params[:asociacion][:genero],
      objetivos: params[:asociacion][:objetivos],
      fundacion: params[:asociacion][:fundacion],
      fundador: params[:asociacion][:fundador],
      sede: params[:asociacion][:sede],
      operacion: params[:asociacion][:operacion])
    
    respond_to do |format|
      if @asociacion.save
        format.html { redirect_to inicio_asociaciones_path, notice: 'Asociacion creada exitósamente' }
      else
        format.html { redirect_to inicio_asociaciones_path, notice: 'No pudo crearse la Asociacion' }
      end
    end
  end

  def editar
    @asociacion = Asociacion.where('id = ?', params[:id]).first
  end

  def actualizar
    @asociacion = Asociacion.find(params[:asociacion][:id])

    respond_to do |format|
      if @asociacion.update(
      codigo: params[:asociacion][:codigo],
      acronimo: params[:asociacion][:acronimo],
      genero: params[:asociacion][:genero],
      objetivos: params[:asociacion][:objetivos],
      fundacion: params[:asociacion][:fundacion],
      fundador: params[:asociacion][:fundador],
      sede: params[:asociacion][:sede],
      operacion: params[:asociacion][:operacion])

        format.html { redirect_to mostrar_asociaciones_path(@asociacion.id), notice: 'Asociacion actualizada exitosamente' }
      else
        format.html { redirect_to inicio_asociaciones_path, notice: 'No pudo actualizarse la Asociacion' }
      end
    end
  end

  def eliminar
      @asociacion = Asociacion.find(params[:id])
      respond_to do |format|
      if @asociacion.destroy
        format.html { redirect_to inicio_asociaciones_path, notice: 'Asociacion eliminada exitósamente' }
      else
        format.html { redirect_to inicio_asociaciones_path, notice: 'Asociacion no se pudo eliminar' }
      end
    end
  end
end


  

