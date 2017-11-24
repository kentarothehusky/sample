class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :content, presence: true,length: { in: 1..140 }
end
