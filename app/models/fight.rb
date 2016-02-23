class Fight < ActiveRecord::Base
has_and_belongs_to_many :users
before_save :set_exp
attr_accessor :user1, :user2





  private
  
    def set_exp
     if !self.winner.nil?
	 win = User.find(self.winner)
	 win.update_attribute(:exp, win.exp + 10)
	 end
end



end
