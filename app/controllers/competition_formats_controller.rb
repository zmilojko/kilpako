class CompetitionFormatsController < AdminController
  before_action :set_competition_format, only: [:show, :edit, :update, :destroy]

  # GET /competition_formats
  # GET /competition_formats.json
  def index
    @competition_formats = CompetitionFormat.all
  end

  # GET /competition_formats/1
  # GET /competition_formats/1.json
  def show
  end

  # GET /competition_formats/new
  def new
    @competition_format = CompetitionFormat.new
  end

  # GET /competition_formats/1/edit
  def edit
  end

  # POST /competition_formats
  # POST /competition_formats.json
  def create
    @competition_format = CompetitionFormat.new(competition_format_params)

    respond_to do |format|
      if @competition_format.save
        format.html { redirect_to @competition_format, notice: 'Competition format was successfully created.' }
        format.json { render :show, status: :created, location: @competition_format }
      else
        format.html { render :new }
        format.json { render json: @competition_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competition_formats/1
  # PATCH/PUT /competition_formats/1.json
  def update
    respond_to do |format|
      if @competition_format.update(competition_format_params)
        format.html { redirect_to @competition_format, notice: 'Competition format was successfully updated.' }
        format.json { render :show, status: :ok, location: @competition_format }
      else
        format.html { render :edit }
        format.json { render json: @competition_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competition_formats/1
  # DELETE /competition_formats/1.json
  def destroy
    @competition_format.destroy
    respond_to do |format|
      format.html { redirect_to competition_formats_url, notice: 'Competition format was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competition_format
      @competition_format = CompetitionFormat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competition_format_params
      params.require(:competition_format).permit(:name)
    end
end
