class OrdersController < ApplicationController

  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]

	def index
		@orders = Order.all
	end

	def new
		@order = current_user.orders.build
	end

  def show
    set_order
  end

	def create
    @order = current_user.orders.build(order_params)
    #@order.user_id = current_user.id

    respond_to do |format|
      if @order.save
        #@order.grab_tweets
        format.html { redirect_to @order, notice: 'Keyword was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        #@order.grab_tweets
        format.html { redirect_to @order, notice: 'Keyword was successfully updated.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:ordername, :ordernumber, :complete, :servicelist, :created_at, :updated_at)
    end

    def check_user
      if current_user != @order.user_id
        redirect_to root_url, alert: "Sorry, this order belongs to someone else"
      end
    end
end
