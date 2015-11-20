class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :new, :edit, :update, :destroy, :create]

  respond_to :html

  def index
    @stuffs = Stuff.all.where({ user_id: current_user.id})
    @inventories = Set.new
    @stuffs.each do |stuff|
      @inventories << Inventory.find(stuff.inventory_id)
    end
    respond_with(@inventories)
  end

  def show
    @stuff = Stuff.find(@inventory.stuff_id)
    @owner = User.find(@stuff.user_id)
    respond_with(@inventory)
  end

  def new
    @stuffs = Stuff.all.where({ user_id: current_user.id})
    @inventory = Inventory.new
    respond_with(@inventory)
  end

  def edit
  end

  def create
    @inventory = Inventory.new(inventory_params)
    @inventory.save
    respond_with(@inventory)
  end

  def update
    @inventory.update(inventory_params)
    respond_with(@inventory)
  end

  def destroy
    @inventory.destroy
    respond_with(@inventory)
  end

  private
    def set_inventory
      @inventory = Inventory.find(params[:id])
    end

    def inventory_params
      params.require(:inventory).permit(:stuff_id, :in_stock, :comment)
    end
end
