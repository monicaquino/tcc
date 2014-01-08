class AntroposController < ApplicationController
  before_action :set_antropo, only: [:show, :edit, :update, :destroy , :alunos]

  # GET /antropos
  # GET /antropos.json
  def index
    @antropos = Antropo.all
  end

  # GET /antropos/1
  # GET /antropos/1.json
  def show
  end

  
  # GET /antropos/new
  def new
    @antropo = Antropo.new   

  end

  # GET /antropos/1/edit
  def edit
  end

  # POST /antropos
  # POST /antropos.json
  def create

        @antropo = Antropo.new(antropo_params)


    respond_to do |format|
      if @antropo.save
        format.html { redirect_to @antropo, notice: 'Antropo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @antropo }
      else
        format.html { render action: 'new' }
        format.json { render json: @antropo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /antropos/1
  # PATCH/PUT /antropos/1.json
  def update
    respond_to do |format|
      if @antropo.update(antropo_params)
        format.html { redirect_to @antropo, notice: 'Antropo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @antropo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /antropos/1
  # DELETE /antropos/1.json
  def destroy
    @antropo.destroy
    respond_to do |format|
      format.html { redirect_to antropos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_antropo
      @antropo = Antropo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def antropo_params
      params.require(:antropo).permit(:estatura, :pescoco, :ombro, :torax, :cintura, :abdomen, 
        :quadril, :braco_esq, :antebraco_esq, :coxa_esq, :panturrilha_esq, :braco_dir, 
        :antebraco_dir, :panturrilha_dir, :coxa_dir, :aluno_id, :alunos_attributes => [:id, :nome])
    end
end
