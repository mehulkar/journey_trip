class StaticController < ApplicationController
  def welcome
    @show_results = true if voted?
    @vote_groups = Vote.all.group_by(&:location).sort_by { |location, votes| votes.count }.reverse
  end

  def voted?
    session[:voted].present?
  end
end
