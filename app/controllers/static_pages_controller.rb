class StaticPagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def products
  end

  def faq
  end
  
 def landing_page
    @featured_product = Product.first
  end
  
end
