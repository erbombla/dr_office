require 'spec_helper'

describe 'Doctor' do
  describe 'save' do
    it "saves a doctor's information to the database" do
      new_doctor = Doctor.new({id: nil, name: 'Dr. Mike Hunt', specialty: 'OBGYN'})
      new_doctor.save
      expect(Doctor.all).to eq([new_doctor])
    end
  end

  describe '.all' do
  it ('starts with no lists') do
    expect(Doctor.all).to eq([])
    end
  end
end
