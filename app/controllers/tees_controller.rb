class TeesController < ApplicationController
  before_action :set_tee, only: [:show, :update, :destroy]

  # GET /tees
  def index
    @tees = Tee.all

    render json: @tees
  end

  # GET /tees/1
  def show
    render json: @tee
  end

  # POST /tees
  def create
    @tee = Tee.new(tee_params)

    if params.dig(:tee, :hole_id)
      @tee.hole = Hole.find(params[:tee][:hole_id])
    end

    if @tee.save
      render json: @tee, status: :created, location: @tee
    else
      render json: @tee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tees/1
  def update
    if @tee.update(tee_params)
      render json: @tee
    else
      render json: @tee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tees/1
  def destroy
    @tee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tee
      @tee = Tee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tee_params
      params.require(:tee).permit(:name, :yardage)
    end
end
