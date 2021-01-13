class ProveedoresController < ApplicationController
def inicio
    @proveedores = Proveedor.all
  end

  def mostrar
    @proveedor = Proveedor.find(params[:id])
  end

  def nuevo
    @proveedor = Proveedor.new
    @presidentes = Presidente.all
  end

  def crear
    @proveedor = Proveedor.new(
      codigo: params[:proveedor][:codigo],
      tipo: params[:proveedor][:tipo],
      industria: params[:proveedor][:industria],
      formaLegal: params[:proveedor][:formaLegal],
      fundacion: params[:proveedor][:fundacion],
      servicio: params[:proveedor][:servicio],
      matriz: params[:proveedor][:matriz],
      sitioweb: params[:proveedor][:sitioweb],
      empleados: params[:proveedor][:empleados],
      presidente_id: params[:proveedor][:presidente_id])
    @presidentes = Presidente.all
    
    respond_to do |format|
      if @proveedor.save
        format.html { redirect_to inicio_proveedores_path, notice: 'proveedor creado exitósamente' }
      else
        format.html { redirect_to inicio_proveedores_path, notice: 'No pudo crearse el proveedor' }
      end
    end
  end

  def editar
    @proveedor = Proveedor.where('id = ?', params[:id]).first
    @presidentes = Presidente.all
  end

  def actualizar
    @proveedor = Proveedor.find(params[:proveedor][:id])

    respond_to do |format|
      if @proveedor.update(
      codigo: params[:proveedor][:codigo],
      tipo: params[:proveedor][:tipo],
      industria: params[:proveedor][:industria],
      formaLegal: params[:proveedor][:formaLegal],
      fundacion: params[:proveedor][:fundacion],
      servicio: params[:proveedor][:servicio],
      matriz: params[:proveedor][:matriz],
      sitioweb: params[:proveedor][:sitioweb],
      empleados: params[:proveedor][:empleados],
      presidente_id: params[:proveedor][:presidente_id])
      @presidentes = Presidente.all

        format.html { redirect_to mostrar_proveedores_path(@proveedor.id), notice: 'proveedor actualizado exitosamente' }
      else
        format.html { redirect_to inicio_proveedores_path, notice: 'No pudo actualizarse el proveedor' }
      end
    end
  end

  def eliminar
      @proveedor = Proveedor.find(params[:id])
      respond_to do |format|
      if @proveedor.destroy
        format.html { redirect_to inicio_proveedores_path, notice: 'proveedor eliminado exitósamente' }
      else
        format.html { redirect_to inicio_proveedores_path, notice: 'proveedor no se pudo eliminar' }
      end
    end
  end
end
