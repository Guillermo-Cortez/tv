# == Schema Information
#
# Table name: garments
#
#  id                 :integer          not null, primary key
#  description        :string
#  colour_id          :integer          not null
#  type_of_garment_id :integer          not null
#  brand_id           :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Garment < ApplicationRecord
  belongs_to :colour
  belongs_to :typeOfGarment, class_name: "TypeOfGarment", foreign_key: "type_of_garment_id"
  belongs_to :brand

  has_many :garment_hosts_broadcasts
  has_many :hosts, through: :garment_hosts_broadcasts
  has_many :broadcast, through: :garment_hosts_broadcasts

  #Permite guardar atributos de modelos relacionados en esta caso de la relacion con participant
  accepts_nested_attributes_for :garment_hosts_broadcasts, allow_destroy: true
end
