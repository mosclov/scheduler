require 'rails_helper'

RSpec.describe 'Static content', type: :system do
  it 'shows the title of page' do
    visit "/"
    expect(page).to have_content('Work Orders')
  end

  it 'shows the Name of a technician to see if cvs imports to databsase' do
    visit "/"
    expect(page).to have_content('Bill Keller')
  end
end
