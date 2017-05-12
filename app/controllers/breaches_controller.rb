class BreachesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    Breach.create(breach_params)
    render_nothing
  end

  private

  def breach_params
    params[:attack_id] = params["a"]
    params[:info] = params["i"]
    params.permit(:attack_id, :info)
  end
end
