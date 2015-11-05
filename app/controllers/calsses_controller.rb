class CalssesController < ApplicationController
  before_action :set_calss, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @calsses = Calss.all
    respond_with(@calsses)
  end

  def show
    respond_with(@calss)
  end

  def new
    @calss = Calss.new
    respond_with(@calss)
  end

  def edit
  end

  def create
    @calss = Calss.new(calss_params)
    @calss.save
    respond_with(@calss)
  end

  def update
    @calss.update(calss_params)
    respond_with(@calss)
  end

  def destroy
    @calss.destroy
    respond_with(@calss)
  end

  private
    def set_calss
      @calss = Calss.find(params[:id])
    end

    def calss_params
      params.require(:calss).permit(:name)
    end
end
