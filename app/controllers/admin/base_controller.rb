class Admin::BaseController < ApplicationController
  before_action :is_admin?
  
  layout "admin/layouts/application"

  def is_admin?
    unless current_user.is_admin?
      flash[:danger] = t "you rae not admin"
      redirect_to root_path
    end
  end
end
