class RentalsController < ApplicationController
  attr_accessor :totalRentalItems, :totalRentalSites

  def home
     @show_animation = false
	 @show_gotobtn=true
	 @show_footer_city = true
     @totalRentalItems = 95238
	 @totalRentalSites = 621

	 @brands = WebSource.select("url,logo,title,digest").where("code IN ('youtx','airizu','mayi','tujia','nicezu','lezuke','aizuke','qmango')")
	 #@brands.each do |brand|
	 #logger.debug brand["url"]
	 #end
    
	 @houses = Rental.select("source_id,title,price_day,images_key").where("id IN (31432,50628,31429,45301,45307,59)")

	 #n = 0
	 #while n < @houses.length
	 #logger.debug "[1] n=" + n.to_s()

	 #house = @houses[n]
	 #logger.debug house["title"]
	 #logger.debug "[2]n=" + n.to_s()
	 #n += 1
	 #end

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
	 @show_footer_city = true
	#rental_id = params[:id]

	#retrieve the data
	houses = Rental.select("source_id,title,city,district,address,house_type,price_day,images_key,beds,bathrooms,bed_type,facilities,lat,lng").where("id = ?",params[:id].to_i())
	@house = houses[0]

	#logger.debug @house["title"]

	#nearby houses up to 8
	@houses = Rental.select("id,source_id,title,address,price_day,images_key,lat,lng").where("city = ? AND district = ? AND id != ?",@house["city"], @house["district"], params[:id].to_i()).limit(8)

	logger.debug @houses.length
  end

  def press
  end

  def contact
     @show_animation = true
	 @show_gotobtn=false
  end

  def about
     @show_animation = true
	 @show_gotobtn=false
  end

  def sitenav
	 @show_footer_city = false
  end

  def list
	queryHash = params[:specs].split("/")
	if queryHash.has_key?("q")
	else

	end
  end
end
