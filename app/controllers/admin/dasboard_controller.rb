class Admin::DasboardController < Admin::BaseController
  before_action :is_admin?
  
  def index
    @bookings = Booking.select_booking
    @tours = Tour.select_custom
  end

  def is_admin?
    unless current_user.is_admin?
      flash[:danger] = t "you rae not admin"
      redirect_to root_path
    end
  end
end
