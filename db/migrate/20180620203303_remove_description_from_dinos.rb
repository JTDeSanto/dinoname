class RemoveDescriptionFromDinos < ActiveRecord::Migration[5.0]
  def change
    remove_column :dinos, :description, :text
  end
end
