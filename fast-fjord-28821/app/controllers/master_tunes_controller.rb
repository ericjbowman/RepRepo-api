class MasterTunesController < ApplicationController
  before_action :set_master_tune, only: [:show, :update, :destroy]

  # GET /master_tunes
  def index
    @master_tunes = MasterTune.all

    render json: @master_tunes
  end

  # GET /master_tunes/1
  def show
    render json: @master_tune
  end

  # POST /master_tunes
  def create
    @master_tune = MasterTune.new(master_tune_params)

    if @master_tune.save
      render json: @master_tune, status: :created, location: @master_tune
    else
      render json: @master_tune.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /master_tunes/1
  def update
    if @master_tune.update(master_tune_params)
      render json: @master_tune
    else
      render json: @master_tune.errors, status: :unprocessable_entity
    end
  end

  # DELETE /master_tunes/1
  def destroy
    @master_tunes = MasterTune.all
    @master_tunes.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_tune
      @master_tune = MasterTune.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def master_tune_params
      params.require(:master_tune).permit(:title, :composer)
    end
end
