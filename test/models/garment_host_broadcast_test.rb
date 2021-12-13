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
require "test_helper"

class GarmentHostBroadcastTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
