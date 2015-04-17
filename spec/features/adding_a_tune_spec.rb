require 'rails_helper'

feature 'adding a tune to the blog' do

	context 'entering information' do
		scenario 'should see a box for user input', :js => true do
			visit('/')
			expect(page).to have_css('form.form')
		end

		scenario 'when entering information the video should appear on the page', :js => true do
			Genre.create(id: 1, name: 'DnB')
			visit('/')
			fill_in('Artist?', :with => 'Hidden Orchestra')
			fill_in('Title?', :with => 'Live')
			fill_in('Blog?', :with =>'Blah')
			fill_in('Link?', :with =>'https://www.youtube.com/embed/bcE4EaAJr_8')
			select("DnB", :from => "Genre")
			click_button('Add')
			expect(page).to have_content('Hidden Orchestra')
		end
	end
end