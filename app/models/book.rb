
class Book < ActiveRecord::Base
  after_save :check_changes

  def check_changes
    print "previous_changes #{self.previous_changes[:price]}\n"
    print "changes          #{self.changes[:price]}\n"
  end

end
