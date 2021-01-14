class EdificiosController < ApplicationController
def inicio
    @edificios = Edificio.all
  end

  def mostrar
    @edificio = Edificio.find(params[:id])
  end

  def nuevo
    @edificio = Edificio.new
    @proveedores = Proveedor.all
  end

  def crear
    @edificio = Edificio.new(
      codigo: params[:edificio][:codigo],
      direccion: params[:edificio][:direccion],
      pagina: params[:edificio][:pagina],
      telefono: params[:edificio][:telefono],
      horaAbre: params[:edificio][:horaAbre],
      horaCierre: params[:edificio][:horaCierre],
      numeroSalones: params[:edificio][:numeroSalones],
      numeroCubiculos: params[:edificio][:numeroCubiculos],
      proveedor_id: params[:edificio][:proveedor_id])
    @proveedores = Proveedor.all
    
    respond_to do |format|
      if @edificio.save
        format.html { redirect_to inicio_edificios_path, notice: 'Edificio creado exitosamente' }
      else
        format.html { redirect_to inicio_edificios_path, notice: 'No pudo crearse el Edificio' }
      end
    end
  end

  def editar
    @edificio = Edificio.where('id = ?', params[:id]).first
    @proveedores = Proveedor.all
  end

  def actualizar
    @edificio = Edificio.find(params[:edificio][:id])

    respond_to do |format|
      if @edificio.update(
      codigo: params[:edificio][:codigo],
      direccion: params[:edificio][:direccion],
      pagina: params[:edificio][:pagina],
      telefono: params[:edificio][:telefono],
      horaAbre: params[:edificio][:horaAbre],
      horaCierre: params[:edificio][:horaCierre],
      numeroSalones: params[:edificio][:numeroSalones],
      numeroCubiculos: params[:edificio][:numeroCubiculos],
      proveedor_id: params[:edificio][:proveedor_id])
    @proveedores = Proveedor.all

        format.html { redirect_to mostrar_edificios_path(@edificio.id), notice: 'Edificio actualizado exitosamente' }
      else
        format.html { redirect_to inicio_edificios_path, notice: 'No pudo actualizarse el Edificio' }
      end
    end
  end

  def eliminar
      @edificio = Edificio.find(params[:id])
      respond_to do |format|
      if @edificio.destroy
        format.html { redirect_to inicio_edificios_path, notice: 'Edificio eliminado exitósamente' }
      else
        format.html { redirect_to inicio_edificios_path, notice: 'Edificio no se pudo eliminar' }
      end
    end
  end
end
