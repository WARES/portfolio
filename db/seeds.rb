# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris varius egestas risus, sit amet interdum orci venenatis et.
    Curabitur suscipit lorem ut ante rhoncus, sit amet rutrum dui pellentesque.
    Nulla ornare est eget lacus aliquam molestie. Nunc ipsum tortor, commodo et convallis vitae, aliquet et ipsum.
    Sed in rutrum nisi, a tristique sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
    Maecenas et ligula lorem. Integer erat orci, dapibus et sollicitudin eget, accumsan in quam.
    Nullam ultrices risus lacinia eros sollicitudin iaculis. Aenean eu leo nibh. Aenean cursus dolor eget quam bibendum facilisis.
    Vestibulum pulvinar erat porttitor diam lacinia suscipit.",
    topic_id: Topic.last.id
  )
end

puts "10 blog post created"

5.times do |skills|
  Skill.create!(
  title: "Rails #{skills}",
  percent_utilized: 15
  )
end

puts "5 sills created"

8.times do |portfolio_item|
  Work.create!(
    title: "C++ Portfolio: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Cras vel consectetur massa. Maecenas viverra enim augue, et pretium dolor mattis et.
    Fusce id mauris eget massa faucibus malesuada. Nulla in tempus libero, sed facilisis ligula.
     In quis auctor orci, id commodo lectus. Praesent suscipit ipsum sed justo dignissim suscipit.
     Donec ut est nisi. Sed mattis quam molestie, malesuada tortor a, gravida nunc.
     Vivamus sollicitudin vestibulum tortor, sed venenatis lorem scelerisque non.
     Nullam euismod ipsum at pulvinar ullamcorper.
     Proin ac sollicitudin arcu. Maecenas pellentesque sit amet tellus vel vestibulum.
    Proin sed sapien vulputate, porta purus in, convallis lectus.
     Aenean eros magna, mattis non mollis a, fringilla id enim.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x250"
  )
end

5.times do |portfolio_item|
  Work.create!(
    title: "Work Ruby Portfolio: #{portfolio_item}",
    subtitle: "Angular JS",
    body: "Cras vel consectetur massa. Maecenas viverra enim augue, et pretium dolor mattis et. Fusce id mauris eget massa faucibus malesuada. Nulla in tempus libero, sed facilisis ligula. In quis auctor orci, id commodo lectus. Praesent suscipit ipsum sed justo dignissim suscipit. Donec ut est nisi. Sed mattis quam molestie, malesuada tortor a, gravida nunc. Vivamus sollicitudin vestibulum tortor, sed venenatis lorem scelerisque non. Nullam euismod ipsum at pulvinar ullamcorper. Proin ac sollicitudin arcu. Maecenas pellentesque sit amet tellus vel vestibulum. Proin sed sapien vulputate, porta purus in, convallis lectus. Aenean eros magna, mattis non mollis a, fringilla id enim.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x250"
  )
end

puts "9 works created"
