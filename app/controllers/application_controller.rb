class ApplicationController < ActionController::Base
protect_from_forgery prepend: true, with: :null_session
    helper_method :current_order
  
  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
