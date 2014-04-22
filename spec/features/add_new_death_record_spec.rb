require 'spec_helper'

feature "submit a new death record" do

  scenario 'a user submits a valid death record' do
    visit new_death_record_path

    fill_in 'Month', with: '01'
    fill_in 'Day', with: '10'
    fill_in 'Year', with: '2008'
    fill_in 'First Name', with: 'John'
    fill_in 'Middle Name', with: 'America'
    fill_in 'Second Name', with: 'James'
    fill_in 'Last Name', with: 'Doe'

    click_button 'Add Record'
    expect(page).to have_content 'Record successfully added.'
    expect(DeathRecord.count).to eq(1)
  end

end
