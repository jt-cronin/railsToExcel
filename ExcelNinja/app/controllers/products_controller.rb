class ProductsController < ApplicationController
	def index
	  # @products = Product.order('created_at DESC')
	  # respond_to do |format|
	  #   format.html
	  #   format.xlsx
	  # end

	  @products = Prodcut.all

    	respond_to do |format|
        …
        format.xlsx {
            send_data Post.to_xlsx.to_stream.read, :filename => 'posts.xlsx', :type => "application/vnd.openxmlformates-officedocument.spreadsheetml.sheet"
        }
	end
end
