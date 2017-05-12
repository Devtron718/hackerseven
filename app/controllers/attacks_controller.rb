class AttacksController < ActiveRecord::Base
  def create
    Attack.create(attack_params)
  end

  private

  def attack_params
    params.permit(:url, :element_id, :element_class)
  end
end
