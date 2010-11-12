class CreateMemberinfos < ActiveRecord::Migration
  def self.up
    create_table :memberinfos do |t|
      t.integer :snmember
      t.string :namefirst
      t.string :namelast
      t.date :dob
      t.integer :memberinfono

      t.timestamps
    end
  end

  def self.down
    drop_table :memberinfos
  end
end
