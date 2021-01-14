class CarrerasController < ApplicationController
  before_action :set_carrera, only: [:show, :edit, :update, :destroy]

  # GET /carreras
  # GET /carreras.json
  def index
    @carreras = Carrera.all
  end

  # GET /carreras/1
  # GET /carreras/1.json
  def show
  end

  # GET /carreras/new
  def new
    @carrera = Carrera.new
    @coordinadores = Coordinador.all
  end

  # GET /carreras/1/edit
  def edit
    @coordinadores = Coordinador.all
  end

  # POST /carreras
  # POST /carreras.json
  def create
    @carrera = Carrera.new(carrera_params)
    @coordinadores = Coordinador.all

    respond_to do |format|
      if @carrera.save
        format.html { redirect_to @carrera, notice: 'Carrera fue creada correctamente.' }
        format.json { render :show, status: :created, location: @carrera }
      else
        format.html { render :new }
        format.json { render json: @carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carreras/1
  # PATCH/PUT /carreras/1.json
  def update
    @coordinadores = Coordinador.all
    respond_to do |format|
      if @carrera.update(carrera_params)
        format.html { redirect_to @carrera, notice: 'Carrera fue actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @carrera }
      else
        format.html { render :edit }
        format.json { render json: @carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carreras/1
  # DELETE /carreras/1.json
  def destroy
    respond_to do |format|
      if @carrera.destroy
      format.html { redirect_to carreras_url, notice: 'Carrera fue eliminada correctamente.' }
      format.json { head :no_content }        
      else
      format.html { redirect_to carreras_url, notice: 'Carrera NO fue eliminada correctamente.' }
      format.json { head :no_content }        
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrera
      @carrera = Carrera.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carrera_params
      params.require(:carrera).permit(:clave, :nombre, :descripcion, :campus, :municipio, :estado, :pais, :coordinador_id)
    end
end
