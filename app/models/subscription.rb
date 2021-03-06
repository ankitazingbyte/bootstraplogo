class Subscription < ApplicationRecord
	belongs_to :order_item
  	validates_presence_of :order_item_id
	validates_presence_of :email

	attr_accessor :stripe_card_token

	def save_with_payment
	    if valid?
	      customer = Stripe::Customer.create(description:email, order_item: order_item_id, card: stripe_card_token)
	      self.stripe_customer_token = customer.id
	      save!
	    end
	  	rescue Stripe::InvalidRequestError => e
 			logger.error "Stripe error while creating customer: #{e.message}"
  			errors.add :base, "There was a problem with your credit card."
  	end
end
