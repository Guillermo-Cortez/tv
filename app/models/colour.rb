# == Schema Information
#
# Table name: colours
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Colour < ApplicationRecord
    has_many :garments
end
