class BookingsController < ApplicationController
  def new
  	@booking = Booking.new
  	@passenger_no = params[:selected_flight][:passenger_no].to_i

  	@flight_id = params[:selected_flight][:selected_flight_id]
  	@chosen_flight = Flight.find(@flight_id)

	@passenger_no.times {|p| @booking.passengers.build}	
  end

  def create 
  	@booking = Booking.new(passengers_attributes)
  	@booking.flight = Flight.find(params[:booking][:flight_id].to_i)
  	@booking.save
  	render 'show'
  end

  private

  def passengers_attributes
  	params.require(:booking).permit(passengers_attributes: [:name, :email])
  end
end
