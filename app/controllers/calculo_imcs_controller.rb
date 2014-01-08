class CalculoImcsController < ApplicationController
  before_action :set_calculo_imc, only: [:show, :edit, :update, :destroy]

  # GET /calculo_imcs
  # GET /calculo_imcs.json
  def index
    @calculo_imcs = CalculoImc.all
  end

  # GET /calculo_imcs/1
  # GET /calculo_imcs/1.json
  def show
  end

  # GET /calculo_imcs/new
  def new
    @calculo_imc = CalculoImc.new

  end

  # GET /calculo_imcs/1/edit
  def edit
  end


  # POST /calculo_imcs
  # POST /calculo_imcs.json
  def create
    @calculo_imc = CalculoImc.new(calculo_imc_params)
   
    respond_to do |format|
      if @calculo_imc.save
        format.html { redirect_to @calculo_imc, notice: 'Calculo imc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @calculo_imc }
      else
        format.html { render action: 'new' }
        format.json { render json: @calculo_imc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calculo_imcs/1
  # PATCH/PUT /calculo_imcs/1.json
  def update
    respond_to do |format|
      if @calculo_imc.update(calculo_imc_params)
        format.html { redirect_to @calculo_imc, notice: 'Calculo imc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @calculo_imc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calculo_imcs/1
  # DELETE /calculo_imcs/1.json
  def destroy
    @calculo_imc.destroy
    respond_to do |format|
      format.html { redirect_to calculo_imcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculo_imc
      @calculo_imc = CalculoImc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calculo_imc_params
      params.require(:calculo_imc).permit(:altura, :peso, :aluno_id)
    end
end
