class TesteAnamnesesController < ApplicationController
  before_action :set_teste_anamnese, only: [:show, :edit, :update, :destroy, :alunos]

  # GET /teste_anamneses
  # GET /teste_anamneses.json
  def index
    @teste_anamneses = TesteAnamnese.all
  end

  # GET /teste_anamneses/1
  # GET /teste_anamneses/1.json
  def show
  end
    def aluno
    @alunos = Aluno.all
    @alunos = @teste_anamneses.aluno
  end

  # GET /teste_anamneses/new
  def new
    @teste_anamnese = TesteAnamnese.new

  end

  # GET /teste_anamneses/1/edit
  def edit
  end

  # POST /teste_anamneses
  # POST /teste_anamneses.json
  def create
    @teste_anamnese = TesteAnamnese.new(teste_anamnese_params)

    respond_to do |format|
      if @teste_anamnese.save
        format.html { redirect_to @teste_anamnese, notice: 'Teste anamnese was successfully created.' }
        format.json { render action: 'show', status: :created, location: @teste_anamnese }
      else
        format.html { render action: 'new' }
        format.json { render json: @teste_anamnese.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teste_anamneses/1
  # PATCH/PUT /teste_anamneses/1.json
  def update
    respond_to do |format|
      if @teste_anamnese.update(teste_anamnese_params)
        format.html { redirect_to @teste_anamnese, notice: 'Teste anamnese was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @teste_anamnese.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teste_anamneses/1
  # DELETE /teste_anamneses/1.json
  def destroy
    @teste_anamnese.destroy
    respond_to do |format|
      format.html { redirect_to teste_anamneses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teste_anamnese
      @teste_anamnese = TesteAnamnese.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teste_anamnese_params
      params.require(:teste_anamnese).permit(:meta, :condicionamento, :tipo_sanguineo, 
        :anemia, :fumante, :alergia, :doenca, :lesao, :cirurgia, :medicacao, :emergencia,
         :telefone, :observacao, :dieta, :peso, :altura, :aluno_id, :alunos_attributes => [:id, :nome])
    end
end
