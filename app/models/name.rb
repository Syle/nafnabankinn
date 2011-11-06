class Name < ActiveRecord::Base
  belongs_to :user

  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['name LIKE ?', search_condition])
  end
end
