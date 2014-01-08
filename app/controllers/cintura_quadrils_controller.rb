class CinturaQuadrilsController < ApplicationController
  before_action :set_cintura_quadril, only: [:show, :edit, :update, :destroy]

  # GET /cintura_quadrils
  # GET /cintura_quadrils.json
  def index
    @cintura_quadrils = CinturaQuadril.all
  end

  # GET /cintura_quadrils/1
  # GET /cintura_quadrils/1.json
  def show
  end

  # GET /cintura_quadrils/new
  def new
    @cintura_quadril = CinturaQuadril.new

  end

  # GET /cintura_quadrils/1/edit
  def edit
  end
  
  def resultado
    @cintura = Float(params[:cintura])
    @quadril = Float(params[:quadril])
    @iraq = @cintura/@quadril 

  end

  # POST /cintura_quadrils
  # POST /cintura_quadrils.json
  def create
    @cintura_quadril = CinturaQuadril.new(cintura_quadril_params)

    respond_to do |format|
      if @cintura_quadril.save
        format.html { redirect_to @cintura_quadril, notice: 'Cintura quadril was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cintura_quadril }
      else
        format.html { render action: 'new' }
        format.json { render json: @cintura_quadril.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cintura_quadrils/1
  # PATCH/PUT /cintura_quadrils/1.json
  def update
    respond_to do |format|
      if @cintura_quadril.update(cintura_quadril_params)
        format.html { redirect_to @cintura_quadril, notice: 'Cintura quadril was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cintura_quadril.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cintura_quadrils/1
  # DELETE /cintura_quadrils/1.json
  def destroy
    @cintura_quadril.destroy
    respond_to do |format|
      format.html { redirect_to cintura_quadrils_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cintura_quadril
      @cintura_quadril = CinturaQuadril.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cintura_quadril_params
      params.require(:cintura_quadril).permit(:cintura, :quadril, :aluno_id)
    end
end
