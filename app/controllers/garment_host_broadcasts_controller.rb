class GarmentHostBroadcastsController < ApplicationController
  before_action :set_garment_host_broadcast, only: %i[ show edit update destroy ]

  # GET /garment_host_broadcasts or /garment_host_broadcasts.json
  def index
    @garment_host_broadcasts = GarmentHostBroadcast.all.where(user_id: current_user.id)
  end

  # GET /garment_host_broadcasts/1 or /garment_host_broadcasts/1.json
  def show
    # @garment_host_broadcast = GarmentHostBroadcast
    # .joins(:garment)
    # .joins(:host)
    # .joins(:broadcast)
    # .where(
    #   "garment_host_broadcasts.user_id = ? AND garment_host_broadcasts.id = ?",current_user.id, params[:id]
    # )
    # pry
    #@garment_host_broadcast = GarmentHostBroadcast.find(params[:id]).where(user_id: current_user.id)
  end

  # GET /garment_host_broadcasts/new
  def new
    @garment_host_broadcast = GarmentHostBroadcast.new
  end

  # GET /garment_host_broadcasts/1/edit
  def edit
  end

  # POST /garment_host_broadcasts or /garment_host_broadcasts.json
  def create
    pry
    @garment_host_broadcast = GarmentHostBroadcast.new(garment_host_broadcast_params)
    @garment_host_broadcast.user_id = current_user.id
    respond_to do |format|
      if @garment_host_broadcast.save
        format.html { redirect_to @garment_host_broadcast, notice: "Garment host broadcast was successfully created." }
        format.json { render :show, status: :created, location: @garment_host_broadcast }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @garment_host_broadcast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garment_host_broadcasts/1 or /garment_host_broadcasts/1.json
  def update
    respond_to do |format|
      if @garment_host_broadcast.update(garment_host_broadcast_params)
        format.html { redirect_to @garment_host_broadcast, notice: "Garment host broadcast was successfully updated." }
        format.json { render :show, status: :ok, location: @garment_host_broadcast }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @garment_host_broadcast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garment_host_broadcasts/1 or /garment_host_broadcasts/1.json
  def destroy
    @garment_host_broadcast.destroy
    respond_to do |format|
      format.html { redirect_to garment_host_broadcasts_url, notice: "Garment host broadcast was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garment_host_broadcast
      @garment_host_broadcast = GarmentHostBroadcast.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def garment_host_broadcast_params
      params.require(:garment_host_broadcast).permit(
        :host_id, 
        :garment_id, 
        :broadcast_id,
        garment_attributes:[
          :id,
          :_destroy
        ]
      )
    end
end
