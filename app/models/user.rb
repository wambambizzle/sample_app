class User < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 } # same as validtates(:name, presence: true)
  validates :email, presence: true
end
