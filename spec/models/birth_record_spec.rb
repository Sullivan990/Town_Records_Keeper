require 'spec_helper'

describe BirthRecord do
  it { should validate_presence_of :birth_month }
  it { should validate_presence_of :birth_day }
  it { should validate_presence_of :birth_year }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
end
