class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :user, index: true
      t.belongs_to :user_target, index: true
      t.integer :kind, default: 1 # in the future maybe there will be more types

      t.timestamps null: false
    end
  end
end
