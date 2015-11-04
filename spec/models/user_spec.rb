require 'rails_helper'

describe User do
  context "validations" do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :email }
  end

  context "associations" do
    it { should belong_to :group }
    it { should have_many :made_requests }
    it { should have_many :fulfilled_requests }
    it { should have_many :votes }
  end
end