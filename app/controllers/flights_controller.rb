class FlightsController < ApplicationController
  def index
  	@flights = Flight.all
  	@airports = Airport.all 
  	@airport_options = @airports.map{|a|[a.code,a.id]}.uniq{|a| a.first}

  	
		if params.has_key?(:flight)
			if params[:flight].has_key?(:search)
   			typed_departing_airport_id = Airport.find_by(code: params[:flight][:search].upcase).id if !params[:flight][:search].empty?
   		end
		@queried_flights =  Flight.where("departing_airport_id IN (?) AND departure_date = ?",[params[:flight][:departing_airport_id],typed_departing_airport_id],submitted_date)
    end
  	
  end

  def create
  end

  def destroy
  end

  private

  def submitted_date
  	Date.new(params[:flight]["departure_date(1i)"].to_i,params[:flight]["departure_date(2i)"].to_i,params[:flight]["departure_date(3i)"].to_i)
  end
 
end
