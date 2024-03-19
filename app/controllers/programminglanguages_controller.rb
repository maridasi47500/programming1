class ProgramminglanguagesController < ApplicationController
  before_action :set_programminglanguage, only: %i[ show edit update destroy ]

  # GET /programminglanguages or /programminglanguages.json
  def index
    @programminglanguages = Programminglanguage.all
  end

  # GET /programminglanguages/1 or /programminglanguages/1.json
  def show
  end

  # GET /programminglanguages/new
  def new
    @programminglanguage = Programminglanguage.new
  end

  # GET /programminglanguages/1/edit
  def edit
  end

  # POST /programminglanguages or /programminglanguages.json
  def create
    @programminglanguage = Programminglanguage.new(programminglanguage_params)

    respond_to do |format|
      if @programminglanguage.save
        format.html { redirect_to programminglanguage_url(@programminglanguage), notice: "Programminglanguage was successfully created." }
        format.json { render :show, status: :created, location: @programminglanguage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @programminglanguage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programminglanguages/1 or /programminglanguages/1.json
  def update
    respond_to do |format|
      if @programminglanguage.update(programminglanguage_params)
        format.html { redirect_to programminglanguage_url(@programminglanguage), notice: "Programminglanguage was successfully updated." }
        format.json { render :show, status: :ok, location: @programminglanguage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @programminglanguage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programminglanguages/1 or /programminglanguages/1.json
  def destroy
    @programminglanguage.destroy!

    respond_to do |format|
      format.html { redirect_to programminglanguages_url, notice: "Programminglanguage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programminglanguage
      @programminglanguage = Programminglanguage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def programminglanguage_params
      params.require(:programminglanguage).permit(:name)
    end
end
