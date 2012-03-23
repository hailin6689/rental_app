class RentalsController < ApplicationController
  attr_accessor :totalRentalItems, :totalRentalSites

  def home
     @totalRentalItems = 95238
	 @totalRentalSites = 621
  end

  def show
  end
end
