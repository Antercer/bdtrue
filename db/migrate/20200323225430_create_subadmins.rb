class CreateSubadmins < ActiveRecord::Migration
  def change
    create_table :subadmins do |t|
      t.references :user1, index: true, foreign_key: true
      t.references :user2, index: true, foreign_key: true
      t.references :board, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
