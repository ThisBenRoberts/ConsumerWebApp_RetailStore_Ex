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
  

  def landing_page
  @products = Product.limit(3)
  end
end

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
        :to => 'benrobertsmemphis@gmail.com',
        :subject => "A new contact form message from #{@name}",
        :body => @message).deliver
end