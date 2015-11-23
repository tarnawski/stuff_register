class InventoriesController < ApplicationController
  before_action :get_informations, only: [:new, :create]
  before_action :authenticate_user!, only: [:new, :create]

  respond_to :html

  def new
    @inventory = Inventory.new
    #need to add pdf generation
    respond_with(@inventory)
  end

  def create
    @inventory = Inventory.new(inventory_params)

    respond_to do |format|
    if @inventory.save
      format.html { redirect_to new_inventory_path, notice: "Inventory saved." }
    else
      format.html { render action: "new" }
    end 

  end
end

  def destroy
    @inventory.destroy
    respond_with(@inventory)
  end

  private
    def get_informations
      @stuffs = Stuff.where({ user_id: current_user.id}) #
      @inventories = Array.new
      @stuffs.each do |stuff|
        Inventory.where({ stuff_id: stuff.id}).each do |inv|
          @inventories << inv
        end
      end
    end

    def inventory_params
      params.require(:inventory).permit(:stuff_id, :in_stock, :comment)
    end
end
