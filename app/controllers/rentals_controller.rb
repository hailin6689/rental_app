class RentalsController < ApplicationController
  attr_accessor :totalRentalItems, :totalRentalSites

  def home
     @totalRentalItems = 95238
	 @totalRentalSites = 621

	 @brands = WebSource.select("url,logo,title,digest").where("code IN ('youtx','airizu','mayi','tujia','nicezu','lezuke','aizuke','qmango')")
	 #@brands.each do |brand|
	 #logger.debug brand["url"]
	 #end
    
	 @houses = Rental.select("source_id,title,price_day,images_key").where("id IN (31432,50628,31429,45301,45307,59)")

	 n = 0
	 while n < @houses.length
	 logger.debug "[1] n=" + n.to_s()
	 house = @houses[n]
	 logger.debug house["title"]
	 logger.debug "[2]n=" + n.to_s()
	 n += 1
	 end

	 #logger.debug "after house selection"

	 # we may want to cache the web_sources
	 #sources = WebSource.select("id,name")
	 #@sourceHash = Hash.new
	 #sources.each do |source|
	#	@sourceHash[source["id"]] = source["name"]
	 #end
	 #logger.debug "after hash"
  end

  def show
  end
end
