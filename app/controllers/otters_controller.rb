class OttersController < ApplicationController
  before_action :set_otter, only: [:show, :edit, :update, :destroy]

  # GET /otters
  # GET /otters.json
  def index
    @otters = Otter.all
  end

  # GET /otters/1
  # GET /otters/1.json
  def show
  end

  # GET /otters/new
  def new
    @otter = Otter.new
  end

  # GET /otters/1/edit
  def edit
  end

  # POST /otters
  # POST /otters.json
  def create
    @otter = Otter.new(otter_params)

    respond_to do |format|
      if @otter.save
        format.html { redirect_to @otter, notice: 'Otter was successfully created.' }
        format.json { render :show, status: :created, location: @otter }
      else
        format.html { render :new }
        format.json { render json: @otter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otters/1
  # PATCH/PUT /otters/1.json
  def update
    respond_to do |format|
      if @otter.update(otter_params)
        format.html { redirect_to @otter, notice: 'Otter was successfully updated.' }
        format.json { render :show, status: :ok, location: @otter }
      else
        format.html { render :edit }
        format.json { render json: @otter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otters/1
  # DELETE /otters/1.json
  def destroy
    @otter.destroy
    respond_to do |format|
      format.html { redirect_to otters_url, notice: 'Otter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otter
      @otter = Otter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def otter_params
      params.require(:otter).permit(:name, :age, :bio)
    end
end
