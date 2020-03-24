class CreateVotos < ActiveRecord::Migration
  def change
    create_table :votos do |t|
      t.references :usuario, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
      t.boolean :valor

      t.timestamps null: false
    end
  end
end
