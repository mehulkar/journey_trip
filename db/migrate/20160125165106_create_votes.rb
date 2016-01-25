class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :poll_id
      t.string :person_name

      t.timestamps null: false
    end
  end
end
