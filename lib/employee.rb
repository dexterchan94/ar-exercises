class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200}

  before_create :set_random_password
  # after_create :set_random_password # fires after the database has been updated
  # before_save :set_random_password # fires on create AND update

  private
    def set_random_password
      random_password = rand(36**8).to_s(36)
      self.password = random_password
      # self.update(password: random_password) # use with after_create
    end


end
