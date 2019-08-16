class ReviewController < ApplicationController
  def create
    _store = params[:store]
    _rate = params[:rate]
    _content = params[:content]
    _customeruser = params[:customeruser]

    review = Review.new
    review.store = _store
    review.rate = _rate
    review.content = _content
    review.cutomeruser = _customeruser

    review.save
    redirect_to controller: 'review', action: 'read'
  end

  def modify
    _id = params[:id]
    @review = Review.find(_id)

    authorize_action_for @review
  end

  def update
    _id = params[:id]
    _store_id = params[:store_id]
    _rate = params[:rate]
    _content = params[:content]
    _customeruser_id = params[:customeruser]

    review = Review.find(_id)
    authorize_action_forize_action_for review 

    review.id = _id
    review.store = _store
    review.rate = _rate
    review.content = _content
    review.customeruser = _customeruser

    review.save

    redirect_to controller: 'review', action: 'read'

  end
  def read
    @review = Review.all
  end

  def delete
    _id = params[:id]

    review = Review.find(_id)
    authorize_action_for review 

    review.destroy

    redirect_to controller: 'review', action: 'read'
  end
end
