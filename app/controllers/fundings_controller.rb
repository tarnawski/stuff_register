class FundingsController < ApplicationController
  before_action :set_funding, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :new, :edit, :update, :destroy, :create]
 before_action :admin!, only: [:new, :edit, :update, :destroy, :create]

 def admin!
  unless current_user.admin?
    redirect_to root_path, notice: 'Nie możesz oglądac tej strony.' 
  end
  end

  respond_to :html

  def index
    @fundings = Funding.all
    respond_with(@fundings)
  end

  def show
    @stuffs = Stuff.where(funding_id: params[:id])
    respond_to do |format|
      format.html
      format.pdf do 
        generate_pdf(@funding.name)
      end
    end
  end

  def new
    @funding = Funding.new
    respond_with(@funding)
  end

  def edit
  end

  def create
    @funding = Funding.new(funding_params)
    @funding.save
    respond_with(@funding)
  end

  def update
    @funding.update(funding_params)
    respond_with(@funding)
  end

  def destroy
    @funding.destroy
    respond_with(@funding)
  end

  private
    def set_funding
      @funding = Funding.find(params[:id])
    end

    def funding_params
      params.require(:funding).permit(:name)
    end
end
