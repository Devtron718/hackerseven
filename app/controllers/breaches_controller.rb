class BreachesController < ActiveRecord::Base
  def create
    Breach.create(breach_params)
  end

  private

  def breach_params
    params[:attack_id] = params["a"]
    params[:info] = params["i"]
    params.permit(:attack_id, :info)
  end
end
