class AlgosController < ApplicationController
  before_action :set_algo, only: %i[ show edit update destroy ]

  # GET /algos or /algos.json
  def index
    @algos = Algo.all
  end

  # GET /algos/1 or /algos/1.json
  def show
  end

  # GET /algos/new
  def new
    @algo = Algo.new
  end

  # GET /algos/1/edit
  def edit
  end

  # POST /algos or /algos.json
  def create
    @algo = Algo.new(algo_params)

    respond_to do |format|
      if @algo.save
        format.html { redirect_to algo_url(@algo), notice: "Algo was successfully created." }
        format.json { render :show, status: :created, location: @algo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @algo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /algos/1 or /algos/1.json
  def update
    respond_to do |format|
      if @algo.update(algo_params)
        format.html { redirect_to algo_url(@algo), notice: "Algo was successfully updated." }
        format.json { render :show, status: :ok, location: @algo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @algo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /algos/1 or /algos/1.json
  def destroy
    @algo.destroy!

    respond_to do |format|
      format.html { redirect_to algos_url, notice: "Algo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_algo
      @algo = Algo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def algo_params
      params.require(:algo).permit(:title, :description)
    end
end
