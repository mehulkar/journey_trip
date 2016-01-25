class VotesController < ApplicationController
  def create
    if person_name.present?
      location_params.map do |key, val|
        @poll.votes.find_or_create_by(
          person_name: person_name,
          location_id: key.to_i
        )
      end

      new_location_params.map do |location|
        new_location = Location.create(name: location)
        @poll.votes.find_or_create_by(
          person_name: person_name,
          location_id: new_location.id
        )
      end

      session[:voted] = true
      redirect_to root_path, notice: 'Thanks for voting!'
    else
      redirect_to root_path, alert: "Vote was not recorded becuase you didn't put your name. Try again plz kthx"
    end
  end

  def location_params
    params[:vote].fetch(:locations, [])
  end

  def new_location_params
    params[:vote].fetch(:new_locations, "").split(",")
  end

  def person_name
    params[:vote].fetch(:person_name)
  end
end
