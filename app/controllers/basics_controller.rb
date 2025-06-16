class BasicsController < ApplicationController
  before_action :set_basic, only: %i[ show edit update destroy ]

  # GET /basics or /basics.json
  def index
    @basics = Basic.all
  end

  # GET /basics/1 or /basics/1.json
  def show
  end

  # GET /basics/new
  def new
    @basic = Basic.new
  end

  # GET /basics/1/edit
  def edit
  end

  # POST /basics or /basics.json
  def create
    @basic = Basic.new(basic_params)

    respond_to do |format|
      if @basic.save
        format.html { redirect_to @basic, notice: "Basic was successfully created." }
        format.json { render :show, status: :created, location: @basic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basics/1 or /basics/1.json
  def update
    respond_to do |format|
      if @basic.update(basic_params)
        format.html { redirect_to @basic, notice: "Basic was successfully updated." }
        format.json { render :show, status: :ok, location: @basic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basics/1 or /basics/1.json
  def destroy
    @basic.destroy!

    respond_to do |format|
      format.html { redirect_to basics_path, status: :see_other, notice: "Basic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basic
      @basic = Basic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def basic_params
      params.require(:basic).permit(:name, :address, :number, :neighborhood, :postal, :city, :state, :phone)
    end
end
