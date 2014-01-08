class PercentualGordurasController < ApplicationController
  before_action :set_percentual_gordura, only: [:show, :edit, :update, :destroy]

  
  # GET /percentual_gorduras
  # GET /percentual_gorduras.json
  def index
    @percentual_gorduras = PercentualGordura.all
  end

  # GET /percentual_gorduras/1
  # GET /percentual_gorduras/1.json
 
  # GET /percentual_gorduras/new
  def new
    @percentual_gordura = PercentualGordura.new

  end

  # GET /percentual_gorduras/1/edit
  def edit
  end

  def show
  end

  # POST /percentual_gorduras
  # POST /percentual_gorduras.json
  def create
    @percentual_gordura = PercentualGordura.new(percentual_gordura_params)

    respond_to do |format|
      if @percentual_gordura.save
        format.html { redirect_to @percentual_gordura, notice: 'Percentual gordura was successfully created.' }
        format.json { render action: 'show', status: :created, location: @percentual_gordura }
      else
        format.html { render action: 'new' }
        format.json { render json: @percentual_gordura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /percentual_gorduras/1
  # PATCH/PUT /percentual_gorduras/1.json
  def update
    respond_to do |format|
      if @percentual_gordura.update(percentual_gordura_params)
        format.html { redirect_to @percentual_gordura, notice: 'Percentual gordura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @percentual_gordura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /percentual_gorduras/1
  # DELETE /percentual_gorduras/1.json
  def destroy
    @percentual_gordura.destroy
    respond_to do |format|
      format.html { redirect_to percentual_gorduras_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_percentual_gordura
      @percentual_gordura = PercentualGordura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def percentual_gordura_params
      params.require(:percentual_gordura).permit(:triceps, :supra_f, :supra_m, :abdomen, :coxa, :subescapular, :aluno_id)
    end
end
