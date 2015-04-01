require 'rails_helper'

feature 'main page' do

	scenario 'seee some text', :js => true do
		visit('/')
		expect(page).to have_content("HALLO")
	end

end