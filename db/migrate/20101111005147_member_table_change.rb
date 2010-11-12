class MemberTableChange < ActiveRecord::Migration
  def self.up
    rename_table 'members','member'
    rename_column 'member', 'id','snmember' 
  end

  def self.down
    "S.O.L."
  end
end
