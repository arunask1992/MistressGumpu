# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
genres = Genre.create(
    [
        {name: 'Spiritual Discourses'},
        {name: 'Art'},
        {name: 'Crafts'},
        {name: 'French'},
        {name: 'Entertainment'}
    ])

Event.create([
	{title: "Watch A Movie - The Revenant", date: '2016-03-20 00:00:00', venue_latitude: 12.8847396, venue_logitude: 77.6417577, genre_id: 5, description: "Join together to watch the award winning film"},
])