class Client < ApplicationRecord
  belongs_to :user
  validates :name, :address, :active, :email, presence: true
  after_create :create_client

  private
  def create_client

  end
end
