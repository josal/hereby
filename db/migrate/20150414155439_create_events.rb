class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :user, index: true
      t.integer :user_target_id, index: true
      t.integer :kind, default: 1 # in the future maybe there will be more types

      t.timestamps null: false

    end
    add_index :events, [:user_id, :user_target_id], unique: true
  end
end
