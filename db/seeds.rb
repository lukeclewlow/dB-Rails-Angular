# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tunes = Tune.create([
  {artist: 'Break', title: 'Let It Happen', blog: 'Absolute roller', link: 'https://www.youtube.com/embed/vi_NZTY5BQA?list=FL7wg_Gt_lNNcI8-Wxes6KGw'}, 
  {artist: 'Double 99', title: 'RIP Groove', blog: 'Classic', link: 'https://www.youtube.com/embed/uR3Vw8J8vUo'}, 
  {artist: 'Proteje', title: 'Who Knows ft. Chronixx', blog: 'New school banger', link: 'https://www.youtube.com/embed/hzqFmXZ8tOE'}, 
  {artist: 'Dyke and the Blazers', title: 'Let a Woman be a Woman', blog: 'So much soul', link: 'https://www.youtube.com/embed/y_moB85G7xI'}, 
  {artist: 'Leaf Dog', title: 'Some People Say', blog: 'Youre too bad', link: 'https://www.youtube.com/embed/TR2VNtbX02Y'}, 
  {artist: 'Scientist', title: 'Galaxy', blog: 'Selection', link: 'https://www.youtube.com/embed/NYqBQc3aFAU'}, 
  {artist: 'Djrum', title: 'The Miracle pt. 1 and 2', blog: 'Wow', link: 'https://www.youtube.com/embed/M1I5Vl93eZs'}
  ])