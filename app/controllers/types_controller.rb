class TypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :new, :edit, :update, :destroy, :create]
  before_action :admin!, only: [:new, :edit, :update, :destroy, :create]

  def admin!
  unless current_user.admin?
    redirect_to root_path, notice: 'Nie możesz oglądac tej strony.' 
  end
  end

  respond_to :html

  def index
    @types = Type.all
    respond_with(@types)
  end

  def show
    @stuffs = Stuff.where(type_id: params[:id])
    respond_to do |format|
      format.html
      format.pdf do 
        generate_pdf(@type.name)
      end
    end
  end

  def new
    @type = Type.new
    respond_with(@type)
  end

  def edit
  end

  def create
    @type = Type.new(type_params)
    @type.save
    respond_with(@type)
  end

  def update
    @type.update(type_params)
    respond_with(@type)
  end

  def destroy
    @type.destroy
    respond_with(@type)
  end

  private
    def set_type
      @type = Type.find(params[:id])
    end

    def type_params
      params.require(:type).permit(:name)
    end
end
