class AddCachedVotesToDinos < ActiveRecord::Migration[5.0]
  def change
    change_table :dinos do |t|
      t.integer :cached_votes_total, default: 0
      t.integer :cached_votes_score, default: 0
      t.integer :cached_votes_up, default: 0
  end

    Dino.find_each(&:update_cached_votes)
  end
end
