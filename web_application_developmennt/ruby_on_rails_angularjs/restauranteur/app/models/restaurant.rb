class Restaurant < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { case_senstive: false }
end
