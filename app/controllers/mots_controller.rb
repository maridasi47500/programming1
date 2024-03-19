class MotsController < ApplicationController
  before_action :set_mot, only: %i[ show edit update destroy ]

  # GET /mots or /mots.json
  def index
    @mots = Mot.all
  end

  # GET /mots/1 or /mots/1.json
  def show
  end

  # GET /mots/new
  def new
    @mot = Mot.new
  end

  # GET /mots/1/edit
  def edit
  end

  # POST /mots or /mots.json
  def create
    @mot = Mot.new(mot_params)

    respond_to do |format|
      if @mot.save
        format.html { redirect_to mot_url(@mot), notice: "Mot was successfully created." }
        format.json { render :show, status: :created, location: @mot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mots/1 or /mots/1.json
  def update
    respond_to do |format|
      if @mot.update(mot_params)
        format.html { redirect_to mot_url(@mot), notice: "Mot was successfully updated." }
        format.json { render :show, status: :ok, location: @mot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mots/1 or /mots/1.json
  def destroy
    @mot.destroy!

    respond_to do |format|
      format.html { redirect_to mots_url, notice: "Mot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mot
      @mot = Mot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mot_params
      params.require(:mot).permit(:mypart_id, :mot, :description)
    end
end
