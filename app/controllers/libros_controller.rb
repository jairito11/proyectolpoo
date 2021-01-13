class LibrosController < ApplicationController
  def inicio
    @libros = Libro.all
  end

  def mostrar
    @libro = Libro.find(params[:id])
  end

  def nuevo
    @libro = Libro.new
    @autores = Autor.all
    @editoriales = Editorial.all
    @generos = Genero.all
    @idiomas = Idioma.all
  end

  def crear
    @libro = Libro.new(
      isbn: params[:libro][:isbn],
      titulo: params[:libro][:titulo],
      autor_id: params[:libro][:autor_id],
      editorial_id: params[:libro][:editorial_id],
      genero_id: params[:libro][:genero_id],
      idioma_id: params[:libro][:idioma_id]
      )
    @autores = Autor.all
    @editoriales = Editorial.all
    @generos = Genero.all
    @idiomas = Idioma.all


    respond_to do |format|
      if @libro.save
        format.html { redirect_to inicio_libros_path, notice: 'Libro creado exitósamente' }
      else
        format.html { render :nuevo }
      end
    end
  end

  def editar
    @libro = Libro.where('id = ?', params[:id]).first
    @autores = Autor.all
    @editoriales = Editorial.all
    @generos = Genero.all
    @idiomas = Idioma.all
  end

  def actualizar
    @libro = Libro.find(params[:libro][:id])
    @autores = Autor.all
    @editoriales = Editorial.all
    @generos = Genero.all
    @idiomas = Idioma.all

    respond_to do |format|
      if @libro.update(
        isbn: params[:libro][:isbn],
        titulo: params[:libro][:titulo],
        autor_id: params[:libro][:autor_id],
        editorial_id: params[:libro][:editorial_id],
        genero_id: params[:libro][:genero_id],
        idioma_id: params[:libro][:idioma_id]
      )

        format.html { redirect_to mostrar_libros_path(@libro.id), notice: 'Libro actualizado exitosamente' }
      else
        format.html { render :nuevo }
      end
    end
  end

  def eliminar
      @libro = Libro.find(params[:id])
      respond_to do |format|
      if @libro.destroy
        format.html { redirect_to inicio_libros_path, notice: 'Libro eliminado exitósamente' }
      else
        format.html { redirect_to inicio_libros_path, notice: 'Libro no se pudo eliminar' }
      end
    end    
  end

end
