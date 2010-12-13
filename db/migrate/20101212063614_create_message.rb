class CreateMessage < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :title
      t.string :text
    end
  end

  def self.down
    drop_table :messages
  end
end
