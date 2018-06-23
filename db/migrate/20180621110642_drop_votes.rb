class DropVotes < ActiveRecord::Migration[5.0]
   def change
    drop_table :votes do |t|
      t.boolean    :vote,     :default => false,    :null => false
      t.references :voteable, :polymorphic => true, :null => false
      t.references :voter,    :polymorphic => true
      t.timestamps
    end
  end

end
