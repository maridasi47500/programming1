class MypartsController < ApplicationController
  before_action :set_mypart, only: %i[ show edit update destroy ]

  # GET /myparts or /myparts.json
  def index
    @myparts = Mypart.all
  end

  # GET /myparts/1 or /myparts/1.json
  def show
  end

  # GET /myparts/new
  def new
    @mypart = Mypart.new
  end

  # GET /myparts/1/edit
  def edit
  end

  # POST /myparts or /myparts.json
  def create
    @mypart = Mypart.new(mypart_params)

    respond_to do |format|
      if @mypart.save
        format.html { redirect_to mypart_url(@mypart), notice: "Mypart was successfully created." }
        format.json { render :show, status: :created, location: @mypart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mypart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myparts/1 or /myparts/1.json
  def update
    respond_to do |format|
      if @mypart.update(mypart_params)
        format.html { redirect_to mypart_url(@mypart), notice: "Mypart was successfully updated." }
        format.json { render :show, status: :ok, location: @mypart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mypart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myparts/1 or /myparts/1.json
  def destroy
    @mypart.destroy!

    respond_to do |format|
      format.html { redirect_to myparts_url, notice: "Mypart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mypart
      @mypart = Mypart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mypart_params
      params.require(:mypart).permit(:algo_id, :title)
    end
end
