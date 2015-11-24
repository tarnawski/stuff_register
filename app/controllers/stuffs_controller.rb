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

  def catalog

    stuffs = Stuff.all;

    if request.post?
      if params[:list][:user_id].present?
        stuffs = stuffs & Stuff.where(user_id: params[:list][:user_id])
      end
      if params[:list][:room_id].present?
        stuffs = stuffs & Stuff.where(user_id: params[:list][:room_id])
      end
      if params[:list][:type_id].present?
       stuffs = stuffs & Stuff.where(type_id: params[:list][:type_id])
      end
      if params[:list][:funding_id].present?
        stuffs = stuffs & Stuff.where(funding_id: params[:list][:funding_id])
      end
     end
   
     @stuffs = stuffs
     respond_with(@stuffs)
  end

  def raport
   if request.post?
    starts = Time.local(params[:start_date][:year], params[:start_date][:month], params[:start_date][:day])
    ends = Time.local(params[:end_date][:year], params[:end_date][:month], params[:end_date][:day])
    @inventories =  Inventory.where(created_at: (starts .. ends))
   end  
  end 


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
