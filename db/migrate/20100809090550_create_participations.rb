class CreateParticipations < ActiveRecord::Migration
  def self.up
    create_table :participations do |t|
      t.string :person_id
      t.integer :conversation_id
      t.boolean :is_read, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :participations
  end
end
