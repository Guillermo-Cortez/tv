# == Schema Information
#
# Table name: broadcasts
#
#  id         :integer          not null, primary key
#  date       :date
#  number     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Broadcast < ApplicationRecord
    has_many :garment_host_broadcasts
    has_many :garment_hosts, through: :garment_host_broadcasts
    has_many :garments, through: :garment_hosts
    has_many :hosts, through: :garment_hosts

    
    #Permite guardar atributos anidados
    accepts_nested_attributes_for :garment_host_broadcasts, allow_destroy: true
    accepts_nested_attributes_for :garment_hosts, allow_destroy: true
    accepts_nested_attributes_for :garments, allow_destroy: true
    accepts_nested_attributes_for :hosts, allow_destroy: true
end
