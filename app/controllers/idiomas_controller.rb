class IdiomasController < ApplicationController
  before_action :set_idioma, only: [:show, :edit, :update, :destroy]

  # GET /idiomas
  # GET /idiomas.json
  def index
    @idiomas = Idioma.all
  end

  # GET /idiomas/1
  # GET /idiomas/1.json
  def show
  end

  # GET /idiomas/new
  def new
    @idioma = Idioma.new
  end

  # GET /idiomas/1/edit
  def edit
  end

  # POST /idiomas
  # POST /idiomas.json
  def create
    @idioma = Idioma.new(idioma_params)

    respond_to do |format|
      if @idioma.save
        format.html { redirect_to @idioma, notice: 'Idioma fue creado correctamente.' }
        format.json { render :show, status: :created, location: @idioma }
      else
        format.html { render :new }
        format.json { render json: @idioma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idiomas/1
  # PATCH/PUT /idiomas/1.json
  def update
    respond_to do |format|
      if @idioma.update(idioma_params)
        format.html { redirect_to @idioma, notice: 'Idioma fue actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @idioma }
      else
        format.html { render :edit }
        format.json { render json: @idioma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idiomas/1
  # DELETE /idiomas/1.json
  def destroy
    respond_to do |format|
      if @idioma.destroy
      format.html { redirect_to idiomas_url, notice: 'Idioma fue eliminado correctamente.' }
      format.json { head :no_content }      
      else
      format.html { redirect_to idiomas_url, notice: 'Idioma NO fue eliminado correctamente.' }
      format.json { head :no_content }      
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idioma
      @idioma = Idioma.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def idioma_params
      params.require(:idioma).permit(:nombre, :region, :hablantes, :puesto, :familia, :dialectos, :escritura, :asociacion_id)
    end
end
