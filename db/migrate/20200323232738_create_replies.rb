class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :contenido
      t.references :post, index: true, foreign_key: true
      t.datetime :reply_datetime

      t.timestamps null: false
    end
  end
end
