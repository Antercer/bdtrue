class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :post_datetime
      t.string :imagen_url
      t.boolean :inactivo

      t.timestamps null: false
    end
  end
end
