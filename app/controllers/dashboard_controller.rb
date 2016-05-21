class DashboardController < ApplicationController
  def catalog
    @setting = Setting.first
  end
end