class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def render_errors_for(model, status = :unprocessable_entity)
    render json: {errors: model.errors.messages}, status: status
  end

  def render_nothing
    head :ok
  end
end
