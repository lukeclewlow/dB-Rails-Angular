require 'rails_helper'

feature 'tunes on the blog' do

	context 'no tunes have been added yet' do
		scenario 'should display a message saying there are no tunes yet', :js => true do
			visit('/')
			expect(page).to have_content("Nothing here yet")
		end
	end

	context 'tunes have been added' do

		before do
			Tune.create(artist: 'Man', title: 'Who Knows')
		end

		scenario 'should see the title of the tune', :js => true do
			visit('/')
			expect(page).to have_content("Who Knows")
			expect(page).not_to have_content("Nothing here yet")
		end
	end

end
