class CategoriesController < ApplicationController
  before_action :categories
   def index; end
   def show
    @category = Category.find(params[:id])
    @musical_instruments = @category.musical_instruments
    pagination
    respond_to do |format|
      format.js
      format.html
    end
  end

   def categories
     @categories ||= Category.all
  
      end
end
