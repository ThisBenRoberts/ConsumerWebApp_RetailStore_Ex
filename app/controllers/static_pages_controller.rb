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
          @products = Product.limit(3)
        end
        



        def thank_you
        @name = params[:name]
        @email = params[:email]
        @message = params[:message]
        UserMailer.contact_form(@email, @name, @message).deliver
        end

end