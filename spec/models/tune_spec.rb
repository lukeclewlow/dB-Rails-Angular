require 'rails_helper'

RSpec.describe Tune, type: :model do

	it 'should be able to create an entry in the database' do
		Tune.create(artist: 'Man', title: 'Who Knows', link: 'https://www.youtube.com/embed/M1I5Vl93eZs')
		expect(Tune.all.length).to eq(1)
	end
  
end
