require "rails_helper"

RSpec.describe Applicant, type: :model do
  describe "relationships" do
    it { should have_many(:applicants_pets) }
    it { should have_many(:pets).through(:applicants_pets) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:street_address) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:zip_code) }
    # it { should validate_presence_of(:description) }
    it { should validate_presence_of(:application_status) }
  end
end