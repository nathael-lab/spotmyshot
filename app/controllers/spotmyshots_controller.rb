class SpotmyshotsController < ApplicationController
  before_action :set_spotmyshot, only: %i[ show edit update destroy ]

  # GET /spotmyshots or /spotmyshots.json
  def index
    @spotmyshots = Spotmyshot.all
  end

  # GET /spotmyshots/1 or /spotmyshots/1.json
  def show
  end

  # GET /spotmyshots/new
  def new
    @spotmyshot = Spotmyshot.new
  end

  # GET /spotmyshots/1/edit
  def edit
  end

  # POST /spotmyshots or /spotmyshots.json
  def create
    @spotmyshot = Spotmyshot.new(spotmyshot_params)

    respond_to do |format|
      if @spotmyshot.save
        format.html { redirect_to @spotmyshot, notice: "Spotmyshot was successfully created." }
        format.json { render :show, status: :created, location: @spotmyshot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spotmyshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spotmyshots/1 or /spotmyshots/1.json
  def update
    respond_to do |format|
      if @spotmyshot.update(spotmyshot_params)
        format.html { redirect_to @spotmyshot, notice: "Spotmyshot was successfully updated." }
        format.json { render :show, status: :ok, location: @spotmyshot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @spotmyshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotmyshots/1 or /spotmyshots/1.json
  def destroy
    @spotmyshot.destroy
    respond_to do |format|
      format.html { redirect_to spotmyshots_url, notice: "Spotmyshot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spotmyshot
      @spotmyshot = Spotmyshot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spotmyshot_params
      params.require(:spotmyshot).permit(:titre, :image, :parametre, :heure, :saison, :coordonnees)
    end
end
