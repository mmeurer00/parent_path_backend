# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
resources = [
    {name: "Child care", description: "enroll your child in school/child care", link: "example.com", location: "NJ"},
    {name: "Recreation", description: "local parks", link: "example3.com", location: "NY"},
    {name: "Child health care", description: "enroll your child in health care", link: "example.com", location: "PA"},
    {name: "Parent Social", description: "mommy meet ups", link: "example4.com", location: "CA"},
    {name: "Food Stamps", description: "food stamps", link: "example.com", location: "NJ"},
    {name: "Child care", description: "enroll your child in school/child care", link: "example.com", location: "NY"}
]

resources.each {|resource| Resource.create(resource)}