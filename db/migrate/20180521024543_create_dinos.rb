class CreateDinos < ActiveRecord::Migration[5.0]
  def change
    create_table :dinos do |t|
      t.string :name
      t.text :description
      t.string :diet

      t.timestamps
    end
  end
end
