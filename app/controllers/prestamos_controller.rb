class PrestamosController < ApplicationController
  def inicio
    @prestamos = Prestamo.all
  end

  def mostrar
    @prestamo = Prestamo.find(params[:id])
  end

  def nuevo
    @prestamo = Prestamo.new
    @libros = Libro.all
    @personas = Persona.all
  end

  def crear
    @prestamo = Prestamo.new(
      fechaPrestamo: params[:prestamo][:fechaPrestamo],
      horaPrestamo: params[:prestamo][:horaPrestamo],
      tipo: params[:prestamo][:tipo],
      fechaEntrega: params[:prestamo][:fechaEntrega],
      horaEntrega: params[:prestamo][:horaEntrega],
      libro_id: params[:prestamo][:libro_id],
      persona_id: params[:prestamo][:persona_id]
      )
    @libros = Libro.all
    @personas = Persona.all    

    respond_to do |format|
      if @prestamo.save
        format.html { redirect_to inicio_prestamos_path, notice: 'Prestamo dado de alta exitósamente' }
      else
        format.html { render :nuevo }
      end
    end
  end

  def editar
    @prestamo = Prestamo.where('id = ?', params[:id]).first
    @libros = Libro.all
    @personas = Persona.all
  end

  def actualizar
    @prestamo = Prestamo.find(params[:prestamo][:id])
    @libros = Libro.all
    @personas = Persona.all    

    respond_to do |format|
      if @prestamo.update(
        fechaPrestamo: params[:prestamo][:fechaPrestamo],
        horaPrestamo: params[:prestamo][:horaPrestamo],
        tipo: params[:prestamo][:tipo],
        fechaEntrega: params[:prestamo][:fechaEntrega],
        horaEntrega: params[:prestamo][:horaEntrega],
        libro_id: params[:prestamo][:libro_id],
        persona_id: params[:prestamo][:persona_id]
      )

        format.html { redirect_to inicio_prestamos_path(@prestamo.id), notice: 'Prestamo actualizado exitosamente' }
      else
        format.html { render :nuevo }
      end
    end
  end

  def eliminar
    @prestamo = Prestamo.find(params[:id])
      respond_to do |format|
      if @prestamo.destroy
        format.html { redirect_to inicio_prestamos_path, notice: 'Prestamo eliminado exitósamente' }
      else
        format.html { redirect_to inicio_prestamos_path, notice: 'Prestamo no se pudo eliminar' }
      end
    end 
  end
end
