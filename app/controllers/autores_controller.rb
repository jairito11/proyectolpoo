class AutoresController < ApplicationController
  before_action :set_autor, only: [:show, :edit, :update, :destroy]

  # GET /autores
  # GET /autores.json
  def index
    @autores = Autor.all
  end

  # GET /autores/1
  # GET /autores/1.json
  def show
  end

  # GET /autores/new
  def new
    @autor = Autor.new
  end

  # GET /autores/1/edit
  def edit
  end

  # POST /autores
  # POST /autores.json
  def create
    @autor = Autor.new(autor_params)

    respond_to do |format|
      if @autor.save
        format.html { redirect_to @autor, notice: 'Autor fue creado correctamente.' }
        format.json { render :show, status: :created, location: @autor }
      else
        format.html { render :new , notice: 'Autor no pudo ser creado.'}
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autores/1
  # PATCH/PUT /autores/1.json
  def update
    respond_to do |format|
      if @autor.update(autor_params)
        format.html { redirect_to @autor, notice: 'Autor fue actualizado correctamente' }
        format.json { render :show, status: :ok, location: @autor }
      else
        format.html { render :edit, notice: 'El autor no pudo ser actualizado' }
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autores/1
  # DELETE /autores/1.json
  def destroy
    respond_to do |format|
      if @autor.destroy
        format.html { redirect_to autores_url, notice: 'Autor fue destruido correctamente' }
        format.json { head :no_content }
      else
        format.html { redirect_to autores_url, notice: 'Autor NO pudo ser eliminado' }
        format.json { head :no_content }
      end      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autor
      @autor = Autor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autor_params
      params.require(:autor).permit(:nombre, :paterno, :materno, :nacionalidad, :lengua, :religion, :distinciones, :fechaNacimiento)
    end
end