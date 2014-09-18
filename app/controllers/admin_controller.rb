class AdminController < ApplicationController
  # Admin controller assures that admin must be signed in.
  # If admin is not signed in, 404 is returned. There is no reason to
  # even admit that this page exists
  
  before_action do |c| 
    if not current_user.try(:admin?) then raise ActionController::RoutingError.new("Not Found") end
  end

end
