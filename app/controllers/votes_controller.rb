class VotesController < ApplicationController
  def create
    if params[:vote][:person_name].present?
      params[:vote][:locations].map do |key, val|
        @poll.votes.find_or_create_by(
          person_name: params[:vote][:person_name],
          location_id: key.to_i
        )
      end
      session[:voted] = true
      redirect_to root_path, notice: 'Thanks for voting!'
    else
      redirect_to root_path, notice: 'I said... wass yo name!'
    end
  end
end
