class TunesController < ApplicationController
  before_action :set_tune, only: [:show, :update, :destroy]

  # GET /tunes
  def index
    @tunes = Tune.all

    render json: @tunes
  end

  # GET /tunes/1
  def show
    render json: @tune
  end

  # POST /tunes
  def create
    @tune = Tune.new(tune_params)

    if @tune.save
      render json: @tune, status: :created, location: @tune
    else
      render json: @tune.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tunes/1
  def update
    if @tune.update(tune_params)
      render json: @tune
    else
      render json: @tune.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tunes/1
  def destroy
    @tune.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tune
      @tune = Tune.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tune_params
      params.require(:tune).permit(:title, :composer)
    end
end
