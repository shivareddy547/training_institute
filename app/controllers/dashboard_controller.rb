class DashboardController < ApplicationController
  def index
    @registration = Registration.new
  end
end
