class Vo2maximosController < ApplicationController
  before_action :set_vo2maximo, only: [:show, :edit, :update, :destroy]

  # GET /vo2maximos
  # GET /vo2maximos.json
  def index
    @vo2maximos = Vo2maximo.all
  end

  # GET /vo2maximos/1
  # GET /vo2maximos/1.json
  def show
  end

  # GET /vo2maximos/new
  def new
    @vo2maximo = Vo2maximo.new
  end

  # GET /vo2maximos/1/edit
  def edit
  end

  # POST /vo2maximos
  # POST /vo2maximos.json
  def create
    @vo2maximo = Vo2maximo.new(vo2maximo_params)

    respond_to do |format|
      if @vo2maximo.save
        format.html { redirect_to @vo2maximo, notice: 'Vo2maximo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vo2maximo }
      else
        format.html { render action: 'new' }
        format.json { render json: @vo2maximo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vo2maximos/1
  # PATCH/PUT /vo2maximos/1.json
  def update
    respond_to do |format|
      if @vo2maximo.update(vo2maximo_params)
        format.html { redirect_to @vo2maximo, notice: 'Vo2maximo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vo2maximo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vo2maximos/1
  # DELETE /vo2maximos/1.json
  def destroy
    @vo2maximo.destroy
    respond_to do |format|
      format.html { redirect_to vo2maximos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vo2maximo
      @vo2maximo = Vo2maximo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vo2maximo_params
      params.require(:vo2maximo).permit(:distancia, :aluno_id)
    end
end
