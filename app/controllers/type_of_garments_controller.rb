class TypeOfGarmentsController < ApplicationController
  before_action :set_type_of_garment, only: %i[ show edit update destroy ]

  # GET /type_of_garments or /type_of_garments.json
  def index
    @type_of_garments = TypeOfGarment.all
  end

  # GET /type_of_garments/1 or /type_of_garments/1.json
  def show
  end

  # GET /type_of_garments/new
  def new
    @type_of_garment = TypeOfGarment.new
  end

  # GET /type_of_garments/1/edit
  def edit
  end

  # POST /type_of_garments or /type_of_garments.json
  def create
    @type_of_garment = TypeOfGarment.new(type_of_garment_params)

    respond_to do |format|
      if @type_of_garment.save
        format.html { redirect_to @type_of_garment, notice: "Type of garment was successfully created." }
        format.json { render :show, status: :created, location: @type_of_garment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_of_garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_of_garments/1 or /type_of_garments/1.json
  def update
    respond_to do |format|
      if @type_of_garment.update(type_of_garment_params)
        format.html { redirect_to @type_of_garment, notice: "Type of garment was successfully updated." }
        format.json { render :show, status: :ok, location: @type_of_garment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_of_garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_of_garments/1 or /type_of_garments/1.json
  def destroy
    @type_of_garment.destroy
    respond_to do |format|
      format.html { redirect_to type_of_garments_url, notice: "Type of garment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_of_garment
      @type_of_garment = TypeOfGarment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_of_garment_params
      params.require(:type_of_garment).permit(:name, :description)
    end
end
