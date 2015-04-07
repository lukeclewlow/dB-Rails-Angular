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
  {artist: 'Break', title: 'Let It Happen', blog: 'Absolute roller, I defy you to stay in your seat for this one. A lot of DnB nowadays tens to be overproduced but Break gets it just right. It has that raw edge, the break itself does most of the work and still has that authentic soulful vibe. Coupled with a powerful sub this has so much power and depth. Keep on rollin!', link: 'https://www.youtube.com/embed/vi_NZTY5BQA', genre_id: 1}, 
  {artist: 'Double 99', title: 'RIP Groove', blog: "Classic tune! It doesn't get much more bassline than this. One to get ya shuffle on to, heard this out so many times over the years and only just managed to grab it!", link: 'https://www.youtube.com/embed/uR3Vw8J8vUo', genre_id: 2}, 
  {artist: 'Proteje', title: 'Who Knows ft. Chronixx', blog: "I heard this on the asbo disco 5 hr radio show and couldn't ID it at the time, nor could I find the point in the show where it was from. Thankfully Rodigan played it at bangface and in his true style talked over the top and I found out the name of this gem. Can't get it out of my head!", link: 'https://www.youtube.com/embed/hzqFmXZ8tOE', genre_id: 3}, 
  {artist: 'Dyke and the Blazers', title: 'Let a Woman be a Woman', blog: 'So much soul', link: 'https://www.youtube.com/embed/y_moB85G7xI', genre_id: 4}, 
  {artist: 'Leaf Dog', title: 'Some People Say', blog: 'Youre too bad', link: 'https://www.youtube.com/embed/TR2VNtbX02Y', genre_id: 5}, 
  {artist: 'Scientist', title: 'Galaxy', blog: 'Selection', link: 'https://www.youtube.com/embed/NYqBQc3aFAU', genre_id: 6}, 
  {artist: 'Djrum', title: 'The Miracle pt. 1 and 2', blog: 'Wow', link: 'https://www.youtube.com/embed/M1I5Vl93eZs', genre_id: 7}
  ])