class AppalunosController < ApplicationController
  before_action :set_appaluno, only: [:show, :edit, :update, :destroy]

  # GET /appalunos
  # GET /appalunos.json
  def index
    @appalunos = Appaluno.all
  end

  # GET /appalunos/1
  # GET /appalunos/1.json
  def show
  end

  # GET /appalunos/new
  def new
    @appaluno = Appaluno.new
  end

  # GET /appalunos/1/edit
  def edit
  end

  # POST /appalunos
  # POST /appalunos.json
  def create
    @appaluno = Appaluno.new(appaluno_params)

    respond_to do |format|
      if @appaluno.save
        format.html { redirect_to @appaluno, notice: 'Appaluno was successfully created.' }
        format.json { render :show, status: :created, location: @appaluno }
      else
        format.html { render :new }
        format.json { render json: @appaluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appalunos/1
  # PATCH/PUT /appalunos/1.json
  def update
    respond_to do |format|
      if @appaluno.update(appaluno_params)
        format.html { redirect_to @appaluno, notice: 'Appaluno was successfully updated.' }
        format.json { render :show, status: :ok, location: @appaluno }
      else
        format.html { render :edit }
        format.json { render json: @appaluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appalunos/1
  # DELETE /appalunos/1.json
  def destroy
    @appaluno.destroy
    respond_to do |format|
      format.html { redirect_to appalunos_url, notice: 'Appaluno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appaluno
      @appaluno = Appaluno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appaluno_params
      params.require(:appaluno).permit(:matricula, :nome, :curso, :emailpessoal, :emaillasalle)
    end
end
