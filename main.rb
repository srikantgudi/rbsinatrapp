require 'sinatra'
require 'sequel'
require 'json'
require 'sinatra/reloader' if development?
require_relative 'config/database'


get '/' do
    erb :index
end

get '/categories' do
    @categories = DB[:categories].all
    erb :categories
end

get '/products' do
    @products = DB[:products].all
    erb :products, locals: {popover: false}
end

get '/category/:catid/products' do
    catid = params[:catid]
    @products = DB[:products].where(pr_category_id: catid)
    erb :products, layout: false, locals: {popover: true}
end

get '/customers' do
    @customers = DB[:customers].all
    erb :customers
end

get '/customer/:custid/orders' do
  custid = params[:custid]
  @orders = DB[:orders].where(ord_customer_id: custid)
  @customer = DB[:customers].first(customer_id: custid)
#   puts "custid: #{custid}"
#   puts "orders"
#   @orders.each do |o| puts "#{o[:order_id]} | #{o[:order_date]}" end
  erb :orders, layout: false, locals: {popover: true}
end

get '/order/:orderid/details' do
    orderid = params[:orderid]
    @order = DB[:orders].first(order_id: orderid)
    @odetails = DB[:order_details].join(:products, product_id: :od_product_id).where(od_order_id: orderid)
    erb :orderdetails, layout: false
end