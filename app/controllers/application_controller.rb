class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  before_action :set_only_poll

  def set_only_poll
    @poll ||= Poll.find_or_create_by(title: 'Where should we Journey to in 2016?')
  end

  http_basic_authenticate_with name: "", password: ENV['BASIC_AUTH_PW']
end
