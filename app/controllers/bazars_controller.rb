class BazarsController < ApplicationController
  before_action :set_bazar, only: [:show, :edit, :update, :destroy]

  # GET /bazars
  # GET /bazars.json
  def index
    @bazars = current_user.bazars.all
  end

  # GET /bazars/1
  # GET /bazars/1.json
  def show
  end

  # GET /bazars/new
  def new
    @bazar = current_user.bazars.new
  end

  # GET /bazars/1/edit
  def edit
  end

  # POST /bazars
  # POST /bazars.json
  def create
    @bazar = current_user.bazars.new(bazar_params)

    respond_to do |format|
      if @bazar.save
        format.html {redirect_to @bazar, notice: 'Bazar was successfully created.'}
        format.json {render :show, status: :created, location: @bazar}
      else
        format.html {render :new}
        format.json {render json: @bazar.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /bazars/1
  # PATCH/PUT /bazars/1.json
  def update
    respond_to do |format|
      if @bazar.update(bazar_params)
        format.html {redirect_to @bazar, notice: 'Bazar was successfully updated.'}
        format.json {render :show, status: :ok, location: @bazar}
      else
        format.html {render :edit}
        format.json {render json: @bazar.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /bazars/1
  # DELETE /bazars/1.json
  def destroy
    @bazar.destroy
    respond_to do |format|
      format.html {redirect_to bazars_url, notice: 'Bazar was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_bazar
    @bazar = current_user.bazars.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def bazar_params
    params.require(:bazar).permit(:user_id, :member_id, :name, :amount, :other_expence, :other_amount, :date)
  end
end
