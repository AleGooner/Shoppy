class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :set_date


  private
  # Display time
  def set_date
      @time = Time.now.strftime('%b %e, %I:%M %p')
  end
  protect_from_forgery with: :exception
end
