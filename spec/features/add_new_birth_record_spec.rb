require 'spec_helper'

feature "submit a new birth record" do

  scenario 'a user submits a valid birth record' do
    visit new_birth_record_path

    fill_in 'Month', with: '01'
    fill_in 'Day', with: '10'
    fill_in 'Year', with: '1992'
    fill_in 'First Name', with: 'John'
    fill_in 'Middle Name', with: 'America'
    fill_in 'Second Name', with: 'James'
    fill_in 'Last Name', with: 'Doe'
    select 'III', from: 'Suffix'
    select 'IMP', from: 'Code'

    click_button 'Add Record'
    expect(page).to have_content 'Record successfully added.'
    expect(BirthRecord.count).to eq(1)
  end

end
