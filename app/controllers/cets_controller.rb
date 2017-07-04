class CetsController < ApplicationController
  before_action :set_cet, only: [:show, :edit, :update, :destroy]

  # GET /cets
  # GET /cets.json
  def index
    @cets = Cet.all
  end

  # GET /cets/1
  # GET /cets/1.json
  def show
  end

  # GET /cets/new
  def new
    @cet = Cet.new
  end

  # GET /cets/1/edit
  def edit
  end

  # POST /cets
  # POST /cets.json
  def create
    @cet = Cet.new(cet_params)

    respond_to do |format|
      if @cet.save
        format.html { redirect_to @cet, notice: 'Cet was successfully created.' }
        format.json { render :show, status: :created, location: @cet }
      else
        format.html { render :new }
        format.json { render json: @cet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cets/1
  # PATCH/PUT /cets/1.json
  def update
    respond_to do |format|
      if @cet.update(cet_params)
        format.html { redirect_to @cet, notice: 'Cet was successfully updated.' }
        format.json { render :show, status: :ok, location: @cet }
      else
        format.html { render :edit }
        format.json { render json: @cet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cets/1
  # DELETE /cets/1.json
  def destroy
    @cet.destroy
    respond_to do |format|
      format.html { redirect_to cets_url, notice: 'Cet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cet
      @cet = Cet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cet_params
      params.require(:cet).permit(:exercise_id, :repetition, :weight)
    end
end
