class ProductsController < ApplicationController
	def index
		@products =Product.paginate(:page => params[:page], :per_page =>2)
	end
	def new
		@product =Product.new
	end

	def create
@product=Product.new(product_params)
if @product.save
	flash[:notice]= "successfully created product."
redirect_to products_path
else
render "new"
end
end

def show
@product=Product.find(params[:id]) 
 end

def edit
@product=Product.find(params[:id])
end

def update
@product=Product.find(params[:id])
if @product.update_attributes(product_params)
	flash[:nitice]= "successfully updated product."
redirect_to product_path(@product)
else
render"exit"
end
end

def destroy
@product=Product.find(params[:id])
if @product.destroy
	flash[:notice]= "successfully destroy product."
redirect_to products_path
end
end

private

def product_params
 params.require(:product).permit!
end
end

