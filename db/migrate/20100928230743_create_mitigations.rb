class CreateMitigations < ActiveRecord::Migration
  def self.up
    create_table :mitigations do |t|
      t.string :audit
      t.integer :risk
      t.string :issue
      t.string :scope
      t.string :recommendation
      t.integer :status
      t.string :responsible
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :mitigations
  end
end
