# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    
    crisis_1=Crisis.create(
      name:"Israeli-Palestinian Conflict", 
      description:"conflict between Palestinians and Isralis", 
      parties:["Palestinians", "Israelis"], 
      keywords:["palestinian","hamas","fatah", "israeli", "israel", "palestine", "zionist"]
      )

    crisis_2=Crisis.create(
    name:"Syrian Civil War",
    description:"Syrian Civil Wars",
    parties:["Syrian Government", "Iraqi Government", "ISIL", "Kurds", "Free Syrian Army"],
    keywords:["isis","isil","kurd", "assad", "syria", "syrian", "aleppo"]
    )


    crisis_3=Crisis.create(
    name:"Afghan Crisis",
    description:"Started in 1978",
    parties:["Taliba", "Afghan Government", "USSR", "USA", "NATO"],
    keywords:["afghanistan","taliban","afghan", "kabul", "kandahar"]
    )

    # # crisis_3=Crisis.create(
    # #  name:"Venezuelan Crisis",
    # #  description:"Unrest and Violence in Venezuela",
    # #  parties:["Venezuelan Government", "Venezuelan Opposition", "Crime"],
    # #  keywords:["venezuela","MUD","maduro", "chavez", "leopoldo lopez", "chavista"]
    # #  )

    
    isr_plst_casual_total=Casualty.create(
      number: "24,000",
      week_ending: Time.new(3000,12,31),
      crisis_id: 1
      )


    isr_plst_casual_2015=Casualty.create(
      number: "190",
      week_ending: Time.new(2015,12,31),
      crisis_id: 1
      )

    isr_plst_casual_2016=Casualty.create(
      number: "88",
      week_ending: Time.new(2016,06,8),
      crisis_id: 1
      )


    syria_casual_total=Casualty.create(
      number: "250,000–470,000",
      week_ending: Time.new(3000,12,31),
      crisis_id: 2
      )

    syria_casual_2015=Casualty.create(
      number: "55,219",
      week_ending: Time.new(2015,12,31),
      crisis_id: 2
      )

    syria_casual_2016=Casualty.create(
      number: "29,800",
      week_ending: Time.new(2016,06,8),
      crisis_id: 2
      )

    afghan_casual_total=Casualty.create(
      number: "1,240,000–2,000,000",
      week_ending: Time.new(3000,12,31),
      crisis_id: 3
      )

    afghan_casual_2015=Casualty.create(
      number: "15,000-36,345",
      week_ending: Time.new(2015,12,31),
      crisis_id: 3
      )

    afghan_casual_2016=Casualty.create(
      number: "1,600",
      week_ending: Time.new(2016,06,8),
      crisis_id: 3
      )


    

