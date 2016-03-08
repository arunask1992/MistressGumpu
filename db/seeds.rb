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
                 {title: "Watch A Movie - The Revenant",
                  date: '2016-03-20 00:00:00',
                  venue_latitude: 12.8847396,
                  venue_logitude: 77.6417577,
                  genre_id: 'Entertainment',
                  description: "Join together to watch the award winning film"},
                 {title: "Temple visit",
                  date: '2016-03-20 00:00:00',
                  venue_latitude: 12.8847396,
                  venue_logitude: 77.6417577,
                  genre_id: 'Spiritual Discourses',
                  description: "Lets go to get Goddess Meenakshi's blessings"},
                 {title: "Yoga",
                  date: '2016-03-20 00:00:00',
                  venue_latitude: 12.8847396,
                  venue_logitude: 77.6417577,
                  genre_id: 'Spiritual Discourses',
                  description: "Breath in.. Breath out.."},
                 {title: "Learn Sanskrit Slogans",
                  date: '2016-03-20 00:00:00',
                  venue_latitude: 12.8847396,
                  venue_logitude: 77.6417577,
                  genre_id: 'Entertainment',
                  description: "Om Sreem ..."},
                 {title: "Watch A Movie - The Revenant",
                  date: '2016-03-20 00:00:00',
                  venue_latitude: 12.8847396,
                  venue_logitude: 77.6417577,
                  genre_id: 'Spiritual Discourses',
                  description: "Join together to watch the award winning film"},
                 {title: "Bon Jour",
                  date: '2016-03-20 00:00:00',
                  venue_latitude: 12.8847396,
                  venue_logitude: 77.6417577,
                  genre_id: 'French',
                  description: "Join together to learn French"},
             ])

Participation.create([
	{participant_id: 100, event_id: 1}
])
