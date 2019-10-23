class DateofinfectionsController < ApplicationController
  before_action :set_dateofinfection, only: [:show, :edit, :update, :destroy]

  # GET /dateofinfections
  # GET /dateofinfections.json
  def index
    @dateofinfections = Dateofinfection.all
  end

  # GET /dateofinfections/1
  # GET /dateofinfections/1.json
  def show
  end

  # GET /dateofinfections/new
  def new
    @dateofinfection = Dateofinfection.new
  end

  # GET /dateofinfections/1/edit
  def edit
  end

  # POST /dateofinfections
  # POST /dateofinfections.json
  def create
    @dateofinfection = Dateofinfection.new(dateofinfection_params)

    respond_to do |format|
      if @dateofinfection.save
        format.html { redirect_to @dateofinfection, notice: 'Dateofinfection was successfully created.' }
        format.json { render :show, status: :created, location: @dateofinfection }
      else
        format.html { render :new }
        format.json { render json: @dateofinfection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dateofinfections/1
  # PATCH/PUT /dateofinfections/1.json
  def update
    respond_to do |format|
      if @dateofinfection.update(dateofinfection_params)
        format.html { redirect_to @dateofinfection, notice: 'Dateofinfection was successfully updated.' }
        format.json { render :show, status: :ok, location: @dateofinfection }
      else
        format.html { render :edit }
        format.json { render json: @dateofinfection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dateofinfections/1
  # DELETE /dateofinfections/1.json
  def destroy
    @dateofinfection.destroy
    respond_to do |format|
      format.html { redirect_to dateofinfections_url, notice: 'Dateofinfection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dateofinfection
      @dateofinfection = Dateofinfection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dateofinfection_params
      params.require(:dateofinfection).permit(:dateofinfection, :animal_id, :disease_id)
    end
end
