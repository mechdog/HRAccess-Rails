class MemberInfoTableChange < ActiveRecord::Migration
  def self.up
    rename_table 'memberinfos','memberinfo'
    rename_column 'memberinfo', 'id','snmemberinfo'
    
  end

  def self.down
  end
end
