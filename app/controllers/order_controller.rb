class OrderController < ApplicationController
  #force_ssl
  def show
    @orders=Order.all
    render json: @orders
  end

  def create
    @order=Order.new(order_params)
    if @order.save
      render status: 200
    else
      render @order.errors
    end
  end
  private
  def order_params
    params.permit(:name,
                  :email,
                  :phone,
                  :bottles,
                  :returned_bottles,
                  :information,
                  :firm,
                  :vitenumber,
                  :delivery_address,
                  :delivery_time,
                  :delivery_date)
  end
end
