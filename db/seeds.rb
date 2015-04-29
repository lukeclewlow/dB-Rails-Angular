genres = Genre.create([
	{name: 'DnB'},
	{name: 'Garage'},
	{name: 'Reggae'},
	{name: 'Soul'},
	{name: 'HipHop'},
	{name: 'Dub'},
	{name: 'Techno'}
	])

tunes = Tune.create([
  {artist: 'Break', title: 'Let It Happen', blog: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu", link: 'https://www.youtube.com/embed/vi_NZTY5BQA', genre_id: 1}, 
  {artist: 'Double 99', title: 'RIP Groove', blog: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu", link: 'https://www.youtube.com/embed/uR3Vw8J8vUo', genre_id: 2}, 
  {artist: 'Proteje', title: 'Who Knows ft. Chronixx', blog: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu", link: 'https://www.youtube.com/embed/hzqFmXZ8tOE', genre_id: 3}, 
  {artist: 'Dyke and the Blazers', title: 'Let a Woman be a Woman', blog: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu", link: 'https://www.youtube.com/embed/y_moB85G7xI', genre_id: 4}, 
  {artist: 'Leaf Dog', title: 'Some People Say', blog: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu", link: 'https://www.youtube.com/embed/TR2VNtbX02Y', genre_id: 5}, 
  {artist: 'Scientist', title: 'Galaxy', blog: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu", link: 'https://www.youtube.com/embed/NYqBQc3aFAU', genre_id: 6}, 
  {artist: 'Djrum', title: 'The Miracle pt. 1 and 2', blog: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu", link: 'https://www.youtube.com/embed/M1I5Vl93eZs', genre_id: 7}
  ])

users = User.create({ email: 'a@a.com', password: '1qaz2wsx' })