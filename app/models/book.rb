class Book < ActiveRecord::Base
  validates_presence_of :description, :title, :price
  validates_uniqueness_of :title



  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
  end

  #25% discount over the price
  def promo_price
    price*0.75
  end

  def self.my_count
    Book.count
  end

end