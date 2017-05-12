class Breach < ActiveRecord::Base
  belongs_to :attack

  after_create :create_attack_success

  def create_attack_success
    self.attack.update_attribute(:success, true)
  end
end
