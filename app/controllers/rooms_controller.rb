class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :new, :edit, :update, :destroy, :create]
   before_action :admin!, only: [:new, :edit, :update, :destroy, :create]

 def admin!
  unless current_user.admin?
    redirect_to root_path, notice: 'Nie możesz oglądac tej strony.' 
  end
  end

  respond_to :html

  def index
    @rooms = Room.all
    respond_with(@rooms)
  end

  def show
    @stuffs = Stuff.where(room_id: params[:id])
    respond_to do |format|
      format.html
      format.pdf do 
        generate_pdf(@room.name)
      end
    end
  end

  def new
    @room = Room.new
    respond_with(@room)
  end

  def edit
  end

  def create
    @room = Room.new(room_params)
    @room.save
    respond_with(@room)
  end

  def update
    @room.update(room_params)
    respond_with(@room)
  end

  def destroy
    @room.destroy
    respond_with(@room)
  end

  private
    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:name)
    end
end
