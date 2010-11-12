class Member < ActiveRecord::Base
  set_table_name "member"
  set_primary_key "snmember"
  
  has_many :memberinfos, :foreign_key=>"snmember"
  
  def memberinfo
    memberinfos.last # TODO: update to  be the one with the latest date or column or some logic
  end
  
end
