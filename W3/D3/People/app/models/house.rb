class House < ActiveRecord::Base
  validates :address, presence: true, uniqueness: true

  has_many :residents,
    primary_key: :id,
    class_name: 'Person'

end
