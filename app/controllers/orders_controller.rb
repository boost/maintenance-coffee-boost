class OrdersController < ApplicationController

  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders/new
  def new
    @order = Order.new
    3.times do
      @order.order_items.new
    end
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to root_path, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params
        .require(:order)
        .permit(:name, order_items_attributes: [ :drink_name, :person_name ])
    end
end
