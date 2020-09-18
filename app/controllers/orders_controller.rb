class OrdersController < ApplicationController

  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  def index
    @orders = Order
      .includes(:order_items)
      .all
      .load
  end

  # GET /orders/new
  def new
    @order = Order.new
    3.times do
      @order.order_items.new
    end
  end

  # POST /orders
  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to orders_path, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  # GET /orders/:id
  def edit
  end

  # POST /orders
  def update
    if @order.update(order_params)
      redirect_to orders_path, notice: 'Order was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params
        .require(:order)
        .permit(:name, order_items_attributes: [ :id, :drink_name, :person_name, :_destroy ])
    end
end
