class ServiciosController < ApplicationController
  before_action :set_servicio, only: %i[ show update destroy ]

  # GET /servicios
  def index
    @servicios = Servicio.all

    render json: @servicios
  end

  
  # GET /servicios/1
  def show
    render json: @servicio
  end

  # POST /servicios
  def create
    @servicio = Servicio.new(servicio_params)

    if @servicio.save
      render json: @servicio, status: :created, location: @servicio
    else
      render json: @servicio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /servicios/1
  def update
    if @servicio.update(servicio_params)
      render json: @servicio
    else
      render json: @servicio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /servicios/1
  def destroy
    @servicio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicio
      @servicio = Servicio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def servicio_params
      params.require(:servicio).permit(:tipo_servicio)
    end
end
