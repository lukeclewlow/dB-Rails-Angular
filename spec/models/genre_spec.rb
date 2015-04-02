require 'rails_helper'

RSpec.describe Genre, type: :model do
  
	it 'can create an entry in the database' do
		Genre.create(name: "DnB")
		expect(Genre.all.length).to eq(1)
	end

end
