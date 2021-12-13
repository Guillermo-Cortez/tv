# == Schema Information
#
# Table name: type_of_garments
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class TypeOfGarment < ApplicationRecord
    has_many :garments
end
