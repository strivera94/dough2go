class ReviewsController < ApplicationController
    def create
        review_p = review_params
        @review = Review.create(review_p.merge({customer: current_customer}))
        redirect_to product_url(@review.product)
    end

    private
    def review_params
        params.require(:review).permit(:customer_id, :product_id, :content, :rating)
    
    end
end
