require 'spec_helper'

describe DeathRecord do
  it { should validate_presence_of :month }
  it { should validate_presence_of :day }
  it { should validate_presence_of :year }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
end
