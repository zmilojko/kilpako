class RaceFormatsController < AdminController
  before_action :set_race_format, only: [:show, :edit, :update, :destroy]

  # GET /race_formats
  # GET /race_formats.json
  def index
    @race_formats = RaceFormat.all
  end

  # GET /race_formats/1
  # GET /race_formats/1.json
  def show
  end

  # GET /race_formats/new
  def new
    @race_format = RaceFormat.new
  end

  # GET /race_formats/1/edit
  def edit
  end

  # POST /race_formats
  # POST /race_formats.json
  def create
    @race_format = RaceFormat.new(race_format_params)

    respond_to do |format|
      if @race_format.save
        format.html { redirect_to @race_format, notice: 'Race format was successfully created.' }
        format.json { render :show, status: :created, location: @race_format }
      else
        format.html { render :new }
        format.json { render json: @race_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /race_formats/1
  # PATCH/PUT /race_formats/1.json
  def update
    respond_to do |format|
      if @race_format.update(race_format_params)
        format.html { redirect_to @race_format, notice: 'Race format was successfully updated.' }
        format.json { render :show, status: :ok, location: @race_format }
      else
        format.html { render :edit }
        format.json { render json: @race_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_formats/1
  # DELETE /race_formats/1.json
  def destroy
    @race_format.destroy
    respond_to do |format|
      format.html { redirect_to race_formats_url, notice: 'Race format was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race_format
      @race_format = RaceFormat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def race_format_params
      params.require(:race_format).permit(:name)
    end
end
