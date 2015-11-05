class StuffsController < ApplicationController
  before_action :set_stuff, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :new, :edit, :update, :destroy, :create]
  before_action :admin!, only: [:new, :edit, :update, :destroy, :create]

 def admin!
  unless current_user.admin?
    redirect_to root_path, notice: 'Nie możesz oglądac tej strony.' 
  end
  end

  respond_to :html

  def index
    @stuffs = Stuff.all
    respond_with(@stuffs)
  end

  def show
    respond_with(@stuff)
  end

  def new
    @stuff = Stuff.new
    respond_with(@stuff)
  end

  def edit
  end

  def create
    @stuff = Stuff.new(stuff_params)
    @stuff.save
    respond_with(@stuff)
  end

  def update
    @stuff.update(stuff_params)
    respond_with(@stuff)
  end

  def destroy
    @stuff.destroy
    respond_with(@stuff)
  end

  private
    def set_stuff
      @stuff = Stuff.find(params[:id])
    end

    def stuff_params
      params.require(:stuff).permit(:name, :description, :price, :in_stock, :type_id, :room_id, :user_id, :funding_id)
    end
end
