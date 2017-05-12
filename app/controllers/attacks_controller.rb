class AttacksController < ApplicationController
  def create
    attack = Attack.new
    if attack.save
      render json: {attack_id: attack.id}, status: :ok
    else
      render_errors_for attack
    end
  end

  def update
    attack = Attack.find(params[:attack_id])
    if attack.update_attributes(update_attack_params)
      render_nothing
    else
      render_errors_for attack
    end
  end

  private

  def update_attack_params
    params.permit(:url, :element_id, :element_class)
  end
end
