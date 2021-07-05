# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
resources = [
    {name: "Child care Resources", description: "Coordination of child care resource and referral services to the public", link: "https://ccrnj.org/", location: "NJ"},
    {name: "Fun Parks/Recreation in NYC", description: "NYC Parks / Recrational events", link: "https://www.nycgovparks.org/", location: "NYC"},
    {name: "Child health care", description: "enroll your child in health care", link: "example.com", location: "All States"},
    {name: "Find a Job", description: "Learn how and where to search for employment.", link: "https://www.usa.gov/find-a-job", location: "All States"},
    {name: "Affordable Housing", description: "Learn about government programs that help low-income people find affordable rental housing.", link: "https://www.usa.gov/finding-home", location: "All states"},
    {name: 'Food Assistance Programs', description:'Learn how to get nutritious food for yourself and your family through SNAP', link: "https://www.usa.gov/food-help", location: "All States"}
]

resources.each {|resource| Resource.create(resource)}

# posts = [
#     {title: "Check out Child care", content: "enroll your child in school/child care", link: "example.com", tag: "NJ", user_id: 1},
#     {title: "check out Recreation", content: "local parks", link: "example3.com", tag: "NY", user_id: 1},
#     {title: "WOWOWOW Child health care", content: "enroll your child in health care", link: "example.com", tag: "PA fun", user_id: 1},
#     {title: "Fun Parent Social", content: "mommy meet ups", link: "example4.com", tag: "CA fun", user_id: 1},
#     {title: "Food Stamps!!!", content: "food stamps", link: "example.com", tag: "NJ kids", user_id: 1},
#     {title: "Child care!!!!", content: "enroll your child in school/child care", link: "example.com", tag: "NY kids", user_id: 1}
# ]

# posts.each {|post| Post.create(post)}

# User.create({username: "Maxine", email:"maxinemeurer@yahoo.com", password:"password", parent:true, location:"NJ"})

