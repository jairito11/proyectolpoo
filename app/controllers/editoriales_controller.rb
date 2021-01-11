class EditorialesController < ApplicationController
  before_action :set_editorial, only: [:show, :edit, :update, :destroy]

  # GET /editoriales
  # GET /editoriales.json
  def index
    @editoriales = Editorial.all
  end

  # GET /editoriales/1
  # GET /editoriales/1.json
  def show
  end

  # GET /editoriales/new
  def new
    @editorial = Editorial.new
  end

  # GET /editoriales/1/edit
  def edit
  end

  # POST /editoriales
  # POST /editoriales.json
  def create
    @editorial = Editorial.new(editorial_params)

    respond_to do |format|
      if @editorial.save
        format.html { redirect_to @editorial, notice: 'Editorial was successfully created.' }
        format.json { render :show, status: :created, location: @editorial }
      else
        format.html { render :new }
        format.json { render json: @editorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /editoriales/1
  # PATCH/PUT /editoriales/1.json
  def update
    respond_to do |format|
      if @editorial.update(editorial_params)
        format.html { redirect_to @editorial, notice: 'Editorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @editorial }
      else
        format.html { render :edit }
        format.json { render json: @editorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /editoriales/1
  # DELETE /editoriales/1.json
  def destroy
    @editorial.destroy
    respond_to do |format|
      format.html { redirect_to editoriales_url, notice: 'Editorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_editorial
      @editorial = Editorial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def editorial_params
      params.require(:editorial).permit(:nombre, :tipo, :isin, :industria, :formaLegal, :fundador, :sede, :fundacion)
    end
end
