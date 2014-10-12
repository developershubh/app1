class PosttitlesController < ApplicationController
  before_action :set_posttitle, only: [:show, :edit, :update, :destroy]

  # GET /posttitles
  # GET /posttitles.json
  def index
    @posttitles = Posttitle.all
  end

  # GET /posttitles/1
  # GET /posttitles/1.json
  def show
  end

  # GET /posttitles/new
  def new
    @posttitle = Posttitle.new
  end

  # GET /posttitles/1/edit
  def edit
  end

  # POST /posttitles
  # POST /posttitles.json
  def create
    @posttitle = Posttitle.new(posttitle_params)

    respond_to do |format|
      if @posttitle.save
        format.html { redirect_to @posttitle, notice: 'Posttitle was successfully created.' }
        format.json { render :show, status: :created, location: @posttitle }
      else
        format.html { render :new }
        format.json { render json: @posttitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posttitles/1
  # PATCH/PUT /posttitles/1.json
  def update
    respond_to do |format|
      if @posttitle.update(posttitle_params)
        format.html { redirect_to @posttitle, notice: 'Posttitle was successfully updated.' }
        format.json { render :show, status: :ok, location: @posttitle }
      else
        format.html { render :edit }
        format.json { render json: @posttitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posttitles/1
  # DELETE /posttitles/1.json
  def destroy
    @posttitle.destroy
    respond_to do |format|
      format.html { redirect_to posttitles_url, notice: 'Posttitle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posttitle
      @posttitle = Posttitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posttitle_params
      params.require(:posttitle).permit(:text)
    end
end
