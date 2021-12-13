# == Schema Information
#
# Table name: garment_host_broadcasts
#
#  id           :integer          not null, primary key
#  garment_id   :integer          not null
#  host_id      :integer          not null
#  broadcast_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer          not null
#
class GarmentHostBroadcast < ApplicationRecord
  belongs_to :host
  belongs_to :broadcast
  belongs_to :garment

  #Permite guardar atributos de modelos relacionados en esta caso de la relacion con participant
  accepts_nested_attributes_for :garment, allow_destroy: true
  
end
