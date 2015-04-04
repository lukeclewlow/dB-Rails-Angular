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
			Tune.create(artist: 'Chronixx', title: 'Who Knows', link: 'https://www.youtube.com/embed/hzqFmXZ8tOE')
		end

		scenario 'should see the title of the tune', :js => true do
			visit('/')
			expect(page).to have_content("Who Knows")
			expect(page).not_to have_content("Nothing here yet")
		end

		scenario 'should see the artist of the tune', :js => true do
			visit('/')
			expect(page).to have_content("Chronixx")
		end

		scenario 'an embedded video should appear', :js => true do
			visit('/')
			expect(page).to have_css('iframe.video')
		end
	end

	context 'filtering by genre' do
	
		before do		
			Genre.create(id: 1, name: 'Reggae')
			Genre.create(id: 2, name: 'Techno')
			Tune.create(artist: 'Chronixx', title: 'Who Knows', link: 'https://www.youtube.com/embed/hzqFmXZ8tOE', genre_id: 1)
			Tune.create(artist: 'Djrum', title: 'The Miracle pt. 1 and 2', link: 'https://www.youtube.com/embed/M1I5Vl93eZs', genre_id: 2)
		end

		scenario 'there is a drop-down menu' do
			visit('/')
			expect(page).to have_css('ul.dropdown-menu')
		end

		scenario 'it contains all genres', :js => true do
			visit('/')
			click_button('Genres')
			expect(page).to have_content('Reggae')
			expect(page).to have_content('Techno')
		end

		scenario 'when you click on a genre the list is filtered', :js => true do
			visit('/')
			click_button('Genres')
			click_link('Techno')
			expect(page).not_to have_content('Chronixx')
		end
	end
end
