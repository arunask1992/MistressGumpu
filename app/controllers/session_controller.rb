class SessionController < ApplicationController
  def create
    render text: request.env['omniauth.auth'].to_yaml
  end
end