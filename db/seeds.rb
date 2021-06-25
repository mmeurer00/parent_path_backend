# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# resources = [
#     {name: "Child care", description: "enroll your child in school/child care", link: "example.com", location: "NJ"},
#     {name: "Recreation", description: "local parks", link: "example3.com", location: "NY"},
#     {name: "Child health care", description: "enroll your child in health care", link: "example.com", location: "PA"},
#     {name: "Parent Social", description: "mommy meet ups", link: "example4.com", location: "CA"},
#     {name: "Food Stamps", description: "food stamps", link: "example.com", location: "NJ"},
#     {name: "Child care", description: "enroll your child in school/child care", link: "example.com", location: "NY"}
# ]

# resources.each {|resource| Resource.create(resource)}

posts = [
    {title: "Check out Child care", content: "enroll your child in school/child care", link: "example.com", tag: "NJ", user_id: 1},
    {title: "check out Recreation", content: "local parks", link: "example3.com", tag: "NY", user_id: 1},
    {title: "WOWOWOW Child health care", content: "enroll your child in health care", link: "example.com", tag: "PA fun", user_id: 1},
    {title: "Fun Parent Social", content: "mommy meet ups", link: "example4.com", tag: "CA fun", user_id: 1},
    {title: "Food Stamps!!!", content: "food stamps", link: "example.com", tag: "NJ kids", user_id: 1},
    {title: "Child care!!!!", content: "enroll your child in school/child care", link: "example.com", tag: "NY kids", user_id: 1}
]

posts.each {|post| Post.create(post)}

# User.create({username: "Maxine", email:"maxinemeurer@yahoo.com", password:"password", parent:true, location:"NJ"})

