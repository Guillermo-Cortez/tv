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
require "test_helper"

class GarmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
