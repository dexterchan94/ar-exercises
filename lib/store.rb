class Store < ActiveRecord::Base
  has_many :employees
  validates_associated :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }

  validate :sell_mens_or_womens_apparel

  def sell_mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "or womens_apparel must be true")
      errors.add(:womens_apparel, "or mens_apparel must be true")
    end
  end

  before_destroy :check_empty_store

  private
    def check_empty_store
      if self.employees.size > 0
        return false
      end
    end

end
