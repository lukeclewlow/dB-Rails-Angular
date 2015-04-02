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
			Tune.create(artist: 'Man', title: 'Who Knows', link: 'https://www.youtube.com/embed/M1I5Vl93eZs')
		end

		scenario 'should see the title of the tune', :js => true do
			visit('/')
			expect(page).to have_content("Who Knows")
			expect(page).not_to have_content("Nothing here yet")
		end

		scenario 'should see the artist of the tune', :js => true do
			visit('/')
			expect(page).to have_content("Man")
		end

		scenario 'an embedded video should appear', :js => true do
			visit('/')
			expect(page).to have_css('iframe.video')
		end


	end

end
