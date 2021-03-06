class Memberinfo < ActiveRecord::Base
  set_table_name "memberinfo"
  set_primary_key "snmemberinfo"
  
  belongs_to :member, :class_name => "Member", :foreign_key => "snmember"
  
  def link_to_member(member_object)
      self.snmember=member_object.id
      self.increment
  end
   
  def increment
    self.member.memberinfono = self.member.memberinfono ? self.member.memberinfono+1 : 1
    self.memberinfono = self.member.memberinfono

    self.member.save
    self.save

  end
  
  def == (object)
      self.namefirst == object.namefirst ? true : false
  end
  
  
end
