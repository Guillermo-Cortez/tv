# == Schema Information
#
# Table name: hosts
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  sex        :boolean
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Host < ApplicationRecord
    has_many :garment_hosts_broadcasts
    has_many :garments, through: :garment_hosts_broadcasts
    has_many :broadcast, through: :garment_hosts_broadcasts
end
