# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  id: 2,
  name: 'Too Collins',
  email: 'again@example.com',
  password: 'password',
  password_confirmation: 'password'
)
user.save!

Product.create!([
                 {
                   name: 'First House',
                   description: 'Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.',
                   price: '1999',
                   image: Rails.root.join('app/assets/images/instrument1.jpg').open,
                   user_id: user.id
                 },
                 {
                   name: 'Second House',
                   description: 'Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.',
                   price: '2999',
                   image: Rails.root.join('app/assets/images/instrument2.jpg').open,
                   user_id: user.id
                 },
                 {
                   name: 'Third House',
                   description: 'Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.',
                   price: '3999',
                   image: Rails.root.join('app/assets/images/instrument3.jpg').open,
                   user_id: user.id
                 },
                 {
                   name: 'Forth House',
                   description: 'The Fender American Professional Series Telecaster brings the companys original electric guitar rocketing into the 21st century with a full complement of upgraded electronics and appointments. Sporting a pair of V-Mod Single-Coil pickups designed by guitar sensei Tim Shaw himself, each pup is custom designed for its placement to get the most out of your neck and bridge. For those who want that trebled Tele scream in lower volume settings, have no fear: the new treble bleed circuit standard on the American Pro Series ensures you get that same presence regardless of where you have the volume knob.',
                   price: '960',
                   image: Rails.root.join('app/assets/images/instrument4.jpg').open,
                   user_id: user.id
                 },
                 {
                   name: 'Fifth House',
                   description: 'The Gibson SG Special Faded was born from a variety of small changes made to Gibson instruments over the course of 50-plus years. The SG Special evolved from the Les Paul Special in the early 60s, and was meant to be a less expensive, stripped-down version of the SG Standard for no-frills players. The SG Special Faded, released in 2002 and still in production today, implemented another cost-reducing measure: the use of a light satin finish. Those digging the SG body shape but who do not need unnecessary bells and whistles may want to take a look at the Gibson SG Special Faded.',
                   price: '599',
                   image: Rails.root.join('app/assets/images/instrument5.jpg').open,
                   user_id: user.id
                 },
                 {
                   name: 'Sixth House',
                   description: 'Path Metheny Signature model guitar in excellent condition. Near zero fret wear and electronics work as expected. Gorgeous natural finish and high quality materials. Back looks amazing as well. No buzz nor issues, low action and very nice tone.',
                   price: '799',
                   image: Rails.root.join('app/assets/images/instrument6.jpg').open,
                   user_id: user.id
                 }
               ])
