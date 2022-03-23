# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

transmission = Tranmission.create([
    {
      transmission_type: "Automatic Transmission",
      abbreviation: "AT"
    },
    {
      transmission_type: "Manual Transmission",
      abbreviation: "MT"
    },
    {
      transmission_type: "Automated Manual Transmission",
      abbreviation: "AM"
    },
    {
      transmission_type: "Continuously Variable Transmission",
      abbreviation: "CVT"
    },
])