class AddLocationIdToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :location_id, :integer
  end
end
