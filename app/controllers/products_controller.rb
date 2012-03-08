class ProductsController < ApplicationController
autocomplete :brand, :name
def new
	@products=Article.new
end
end
