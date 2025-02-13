class Applicant < ApplicationRecord
  validates :name, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true, numericality: true
  # validates :description, presence: true
  validates :application_status, presence: true

  has_many :applicants_pets
  has_many :pets, through: :applicants_pets

  def descript 
    self.description.blank? && self.pets.count > 0
  end

  def no_description?
    self.description.blank?
  end
end