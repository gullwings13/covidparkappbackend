# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Creating parks"

central_park = Park.create(
    name:"Central Park",
    boro:"Manhattan",
    address:"Central Park stretches from North 110th Street to Central Park South (59th Street), and from Central Park West (8th Avenue) to 5th Ave.",
    link:"https://www.nycgovparks.org/parks/central-park", 
    average_rating:-1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg',
    picture_attribution: 'FEMA/Kenneth Wilsey / Public domain',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/6/61/20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg')

central_park.save()

prospect_park = Park.create(
    name:"Prospect Park",
    boro:"Brooklyn",
    address:"Prospect Park is situated between the neighborhoods of Park Slope, Prospect Heights, Prospect Lefferts Gardens, Flatbush, and Windsor Terrace, and is adjacent to the Brooklyn Museum, Grand Army Plaza, and the Brooklyn Botanic Garden.",
    link:"https://www.nycgovparks.org/parks/prospect-park", 
    average_rating:-1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')

central_park.save()


flushing_meadows = Park.create(
    name:"Flushing Meadows Corona Park",
    boro:"Queens",
    address:"111 St. and College Point Blvd., Park Drive E.",
    link:"https://www.nycgovparks.org/parks/flushing-meadows-corona-park", 
    average_rating:-1,
    picture_attribution_link: 'http://creativecommons.org/licenses/by-sa/3.0/',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA',

    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')
        
flushing_meadows.save()



mccarren_park = Park.create(
    name:"McCarren Park",
    boro:"Brooklyn",
    address:"N. 12 St., Lorimer St., Manhattan Ave. bet. Bayard St. and Berry St. - Nassau Ave",
    link:"https://www.nycgovparks.org/parks/mccarren-park", 
    average_rating:-1,
    picture_attribution_link:'http://creativecommons.org/licenses/by-sa/3.0/',
    picture_attribution: 'Jim.henderson / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/McCarren_Pk_COVID_jeh.jpg')

mccarren_park.save()



# central park zones

puts "Creating zones for Central Park"

Zone.create(location: "106-CPW, W Of Drive, AC Powell Blvd",
    name: "Northwest Corner",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg',
    picture_attribution: 'FEMA/Kenneth Wilsey / Public domain',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/6/61/20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg')

Zone.create(location: "CPW, 86 St And West Drive, West Of Great Lawn, 85 St Transverse",
    name: "Ross Pinetum",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg',
    picture_attribution: 'FEMA/Kenneth Wilsey / Public domain',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/6/61/20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg')

Zone.create(location: "East Drive, 5 Ave, South Of Met",
    name: "Cedar Hill",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/3.0',
    picture_attribution: 'Jim.henderson / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/8/8f/Glade_Arch_north_cloudy_jeh.jpg')

Zone.create(location: "North Of The Arsenal, South Of Wallach Walk, 5th Ave",
    name: "North Of The Arsenal",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Central_Park_Arsenal_jeh.JPG',
    picture_attribution: 'Jim.henderson / Public domain',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Central_Park_Arsenal_jeh.JPG')

Zone.create(location: "South & West Sides Of Lake, N/o 72 St Transverse, Central Park West To 81 St & Transverse",
    name: "Bethesda Terrace",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/3.0',
    picture_attribution: 'Ahodges7 / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/d/d9/Angel_of_the_Waters_Fountain_and_Bethesda_Terrace%2C_Central_Park%2C_NYC.jpg')

Zone.create(location: "East Drive, 72 St Transverse, 5th Ave, South Of Cedar Hill",
    name: "Pilgrim Hill & Conservatory Water",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/3.0',
    picture_attribution: 'Ingfbruno / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/8/84/2910-Central_Park-Conservatory_Pond.JPG')

Zone.create(location: "The Great Lawn, East Drive, 85 St Transverse",
    name: "Great Lawn And Cleopatra's Needle",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/4.0',
    picture_attribution: 'Helen102016 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/0/02/Cleopatra%27s_Needle_Central_Park.jpg')

Zone.create(location: "CPW, 85 St Transverse, West Drive To 96 St",
    name: "Central Park West",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/3.0',
    picture_attribution: 'Daniel Case / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Central_Park_West_buildings_over_Lake.jpg')

Zone.create(location: "S Of North Dr, N Of Huddlestone Br, Interior Of Drives",
    name: "Blockhouse One",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:New_York_City_Blockhouse.JPG',
    picture_attribution: 'Sylius / Public domain',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/1b/New_York_City_Blockhouse.JPG')

Zone.create(location: "West Drive, Center Drive, 65 St Transverse",
    name: "Heckscher Ballfields & Playground",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by/2.0',
    picture_attribution: 'Jazz Guy from New Jersey, United States / CC BY (https://creativecommons.org/licenses/by/2.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/9/92/Day_Trip_to_New_York_City_%282788493478%29.jpg')

Zone.create(location: "Border of Heckscher Ballfields/Wollman Rink/Center Dr/65 St Transverse/East Dr",
    name: "Dairy, Chess & Checkers House, Carousel",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/3.0',
    picture_attribution: 'Ingfbruno / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/14/3030-Central_Park-The_Dairy.JPG')

Zone.create(location: "East Drive, 102 Exit, Conservancy Garden, Northern Path",
    name: "Conservatory Gardens West Landscape",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/3.0',
    picture_attribution: 'Pablo Costa Tirado (… / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/5/54/Conservatory_Garden_in_Central_Park_-_panoramio.jpg')

Zone.create(location: "5 Ave, 103 St To 106 St",
    name: "Conservatory Garden",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/4.0',
    picture_attribution: 'Minard38 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/7/79/Conservatory_Garden%2C_Central_Park.jpg')

Zone.create(location: "East Drive, Southern Path, Conservancy Garden, Harlem Meer",
    name: "Nutter's Battery & Fort Clinton Site",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/4.0',
    picture_attribution: 'King of Hearts / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Central_Park_New_York_October_2016_006.jpg')

Zone.create(location: "Center Drive To East Drive (including Gapstow Bridge)",
    name: "Wollman Rink",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by/2.0',
    picture_attribution: 'Ludovic Bertron from New York City, Usa / CC BY (https://creativecommons.org/licenses/by/2.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/3/34/Wollman_Rink_%283338081339%29.jpg')

Zone.create(location: "CPW, N Of 100 Str, W Of West Dr, S Of 105 St",
    name: "The Pool",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/4.0',
    picture_attribution: 'Jay Dobkin / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/8/87/Egret_in_the_Pool_in_Central_Park_5.jpg')

Zone.create(location: "Center Of Park, 102-106 Sts, Btwn Drives",
    name: "Loch Ravine",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/4.0',
    picture_attribution: 'Epicgenius / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/2/23/Central_Park_May_2019_85.jpg')

Zone.create(location: "N Of 105, E Of CPW, W Of West Dr, SE Of 106 Path",
    name: "The Great Hill",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg',
    picture_attribution: 'FEMA/Kenneth Wilsey / Public domain',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/6/61/20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg')

Zone.create(location: "East Drive, 97 St Transverse, 5 Ave, E 102 St Entrance",
    name: "East Meadow",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg',
    picture_attribution: 'FEMA/Kenneth Wilsey / Public domain',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/6/61/20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg')

Zone.create(location: "West Drive, 97 St Transverse, North Meadow Recreation Center South Of The North Meadow",
    name: "North Meadow Recreation Center",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/4.0',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Central_Park_North_Meadow_td_%282019-04-18%29_061_-_Baseball_Field_4.jpg')

Zone.create(location: "CPW, 79 St Transverse, West Drive To 85 St",
    name: "79th St Yard And Summit Rock",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/publicdomain/zero/1.0/deed.en',
    picture_attribution: 'peakpx / CC0',
    picture_url: 'https://c1.peakpx.com/wallpaper/140/127/621/couple-romance-romantic-people-wallpaper.jpg')

Zone.create(location: "Mid-park In The 80's",
    name: "Reservoir Running Track & Landscape",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/2.0',
    picture_attribution: 'Gruban / Patrick Gruban from Munich, Germany / CC BY-SA (https://creativecommons.org/licenses/by-sa/2.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/b/b2/Central_Park_jogging.jpg')

Zone.create(location: "66 St To 72 St, CPW To West Drive",
    name: "Central Park West",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/3.0',
    picture_attribution: 'Daniel Case / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Central_Park_West_buildings_over_Lake.jpg')

Zone.create(location: "West Drive, CPW, 65 St Transverse",
    name: "Central Park West",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by/2.5',
    picture_attribution: 'Fritz Geller-Grimm / CC BY (https://creativecommons.org/licenses/by/2.5)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f9/Centralpark_fg01.jpg')

Zone.create(location: "Columbus Circle, West Drive, CPS, Center Drive",
    name: "Central Park South",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/4.0',
    picture_attribution: 'Daniel Dimitrov / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/5/5d/The_Pond_in_Central_Park_South.jpg')        

Zone.create(location: "East Drive, Wallach Walk, 5th Ave, 72 St Transverse",
    name: "Wallach Walk And East Green",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/4.0',
    picture_attribution: 'JJBers / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/5/54/Upper_East_Side_-_Central_Park_-_20180821190508.jpg')

Zone.create(location: "5 Ave Btw E 60 and E 65 Sts",
    name: "Wien Walk And Arsenal",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/3.0',
    picture_attribution: 'David Shankbone / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Lower_Central_Park_Shot_4.JPG')

Zone.create(location: "W 72, 72 St Transverse, Lake",
    name: "Strawberry Fields",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by/2.0',
    picture_attribution: 'Phil Whitehouse from London, United Kingdom / CC BY (https://creativecommons.org/licenses/by/2.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/1d/Strawberry_Fields%2C_Central_Park_%282110928763%29.jpg')

Zone.create(location: "West Drive To 92 St, Reservoir, East Drive, 97 St Transverse",
    name: "Reservoir (Northwest)",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Central_Park_New_York_City_New_York_23_cropped.jpg',
    picture_attribution: 'Jet Lowe / Public domain',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/0/0a/Central_Park_New_York_City_New_York_23_cropped.jpg')

Zone.create(location: "Reservoir To Bridge 24 (@ 86 St), West Drive, 5 Ave To 90 St",
    name: "Reservoir (Southeast)",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/3.0',
    picture_attribution: 'Pablo Costa Tirado (… / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a8/Southeast_Reservoir_Bridge_-_panoramio.jpg')

Zone.create(location: "Reservoir, 90 St, 5 Ave, 97 St Transverse",
    name: "Reservoir (Northeast)",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Central_Park_Reservoir_South_Gatehouse_spring_jeh.jpg',
    picture_attribution: 'Jim.henderson / CC0',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e2/Central_Park_Reservoir_South_Gatehouse_spring_jeh.jpg')

Zone.create(location: "CPW, W 97 St, West Drive, W 100 St",
    name: "Central Park West",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by/2.5',
    picture_attribution: 'Fritz Geller-Grimm / CC BY (https://creativecommons.org/licenses/by/2.5)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f9/Centralpark_fg01.jpg')

Zone.create(location: "West Drive, East Drive, 97 St Transverse, South Of Loch Ravine",
    name: "North Meadow",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/4.0',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/ce/Central_Park_North_Meadow_td_%282019-04-18%29_010.jpg')

Zone.create(location: "Center Drive To East Drive, W 59 St",
    name: "Hallett Nature Sanctuary And Pond",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/4.0',
    picture_attribution: 'Epicgenius / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/7/78/Central_Park_Apr_2019_160.jpg')

Zone.create(location: "West Drive, 79 St Transverse, East Drive, South Of The Great Lawn",
    name: "Belvdre. Cstl., Turtle Pond, Shkspr Grdn",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by/2.0',
    picture_attribution: 'Stig Nygaard from Copenhagen, Denmark / CC BY (https://creativecommons.org/licenses/by/2.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Belvedere_Castle%2C_Central_Park.jpg')

Zone.create(location: "5 Ave, CPN, Dana Discovery Center, Powell Blvd",
    name: "Frawleys' Run",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg',
    picture_attribution: 'FEMA/Kenneth Wilsey / Public domain',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/6/61/20170721_Gotham_Shield_NYC_Aerials-225_medium.jpg')

Zone.create(location: "North & South Of The Gill, Btwn 79 St Transverse, the Lake, East Drive",
    name: "The Ramble",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:New_York_City_(New_York,_USA),_Central_Park_--_2012_--_6732.jpg',
    picture_attribution: 'Dietmar Rabich / Wikimedia Commons / “New York City (New York, USA), Central Park -- 2012 -- 6732” / CC BY-SA 4.0',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/c1/New_York_City_%28New_York%2C_USA%29%2C_Central_Park_--_2012_--_6732.jpg')

Zone.create(location: "Sheep Meadow, Center Drive, 72 St",
    name: "The Mall And Rumsey Playfield",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/4.0',
    picture_attribution: 'Throggmorton / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/b/be/Mother_Goose_outside_of_Rumsey_Play_Field_in_the_Winter.jpg')

Zone.create(location: "72 St Transverse, West Drive, 65 St Transverse, Volleyball Courts",
    name: "Sheep Meadow",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/2.0',
    picture_attribution: 'Ed Yourdon from New York City, USA / CC BY-SA (https://creativecommons.org/licenses/by-sa/2.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/c6/Sheep_Meadow%2C_Central_Park_during_Autumn%2C_NYC.jpg')

Zone.create(location: "East Drive, 79 St Transverse, 5th Ave To 86 St",
    name: "The Metropolitan Museum Of Art",
    park: central_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'https://creativecommons.org/licenses/by-sa/3.0',
    picture_attribution: 'Sracer357 / CC BY-SA',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/d/d2/The_Metropolitan_Museum_of_Art.jpg')


# Flushing meadows
puts "Creating zones for Flushing Meadows"

        
Zone.create(location: "Unisphere Promenade, Un Ave N And S, Astronaut Ct",
    name: "Reflecting Pool Lawns",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'MusikAnimal / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Unisphere_in_Flushing_Meadows-Corona_Park_6_October_2013.jpeg')

Zone.create(location: "(s) Van Wyck Expwy To (n)Fountain Of The Planets",
    name: "South Of Fountain Of The Planets",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'CaptJayRuffins / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cd/Unisphere_Fountains_-_The_Rocket_Thrower.jpg')



Zone.create(location: "(e) Grand Central Pkwy To (w)111th St. To (n) Heckscher Children Farm",
    name: "Ballfields",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/c7/Flushing_Meadows_Meadow_Lake_td_%282018-05-26%29_44_-_Baseball_Field_13.jpg')



Zone.create(location: "(e) Van Wyck Expwy To (n)LIRR To (w)Passerelle Building",
    name: "Meadow Lake NW",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/ce/Flushing_Meadows_Meadow_Lake_td_%282018-05-26%29_27.jpg')



Zone.create(location: "(e) Grand Central Pkwy To (w)111th St. To (n) Heckscher Children Farm",
    name: "Putt-putt Course & Allied Bldg",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')

Zone.create(location: "(e) Meadow Lake To (w) Grand Central Prkwy To (n) Atheletic Fields",
    name: "Meadow Lake SW",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Flushing_Meadows_Meadow_Lake_td_%282018-05-26%29_47.jpg')



Zone.create(location: "111 St & Saultell & 56 Aves",
    name: "Playground For All Children",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/7/70/Playground_for_All_Children_Qns_td_%282019-03-21%29_038.jpg')


Zone.create(location: "Jewel Ave & Van Wyck Exwy",
    name: "Triassic Playground",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')


    
Zone.create(location: "Between Passarelle Building And Fountain Of Planets",
    name: "Buzz Vollmer Playground",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')


Zone.create(location: "Behind Tennis Center",
    name: "Saturn Playground",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')


Zone.create(location: "W/s Of Meadow Lake & G C Pkwy",
    name: "Jurassic Playground",
    park: flushing_meadows,
    average_rating: -1,    
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')


Zone.create(location: "Park Dr East & 73 Terrace",
    name: "Albert H. Mauro Playground",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/b/b8/Flushing_Meadows_Meadow_Lake_td_%282018-05-26%29_32.jpg')



Zone.create(location: "(w) Meadow Lake To (e) Van Wyck Expwy To (n) Parking 410",
    name: "Meadow Lake NE",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://commons.wikimedia.org/wiki/File:Flushing_Meadows_Meadow_Lake_td_(2018-05-26)_32.jpg')


Zone.create(location: "Meadow Lake SE",
    name: "(w) Meadow Lake To (e) Van Wyck Expwy To (n) Model",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/5/5b/Flushing_Meadows_Meadow_Lake_td_%282018-05-26%29_63.jpg')



Zone.create(location: "(s) Parking 110 To (w) Grand Central Prkwy To (n) Pool West Of Unisphere",
    name: "New York City Bldg",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')


Zone.create(location: "(e) S Of Fountain Of The Fairs To (w) N Of Unisphere Fountain",
    name: "Unisphere",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Beyond My Ken / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/16/Unisphere_in_summer.jpg')



Zone.create(location: "(e) Van Wyck Expwy, (w) N Of Assembly Area, (s) Fountain Of The Planets",
    name: "North Of Fountain Of The Planets",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Pablo Costa Tirado (… / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)Pablo Costa Tirado (… / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Vista_de_Flushing_Meadows_Corona_Park_cerca_de_la_Unisfera_-_panoramio.jpg')


Zone.create(location: "Path Of Commerce, Fountain Of The Fairs Prom S, Un Ave S, Path Of Africa",
    name: "South Lawn",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/0/00/Flushing_Meadows_Meadow_Lake_td_%282018-05-26%29_10.jpg')

    
Zone.create(location: "(e) Meadow Lake To (sw) Grand Central Parkway To (se) Van Wyck Expwy ",
    name: "Meadow Lake South",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Flushing_Meadows_Meadow_Lake_td_%282018-05-26%29_06.jpg')


Zone.create(location: "Path Of Commerce, Fountain Of The Fairs Prom N, Un Ave N",
    name: "North Lawn",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/7/73/Flushing_Meadows_Meadow_Lake_td_%282018-05-26%29_12.jpg')


Zone.create(location: "(n) LIE To (s) Meadow Lake To (e) Van Wyck Expwy Extension",
    name: "Meadow Lake North",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Flushing_Meadows_Meadow_Lake_td_%282018-05-26%29_48.jpg')


Zone.create(location: "(s) LIE To (N of) Asral Fountain",
    name: "Festival Square & Garden Of Meditation",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')

Zone.create(location: "College Pt Blvd, Van Wyck Expwy, At Booth Memorial Ave",
    name: "Lawrence Playground",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')

Zone.create(location: "62nd Drive And Grand Central Pkwy Service Rd",
    name: "World's Fair Playground",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')

Zone.create(location: "(ne) Fountain Of The Planets To (sw) Fountain Of The Fairs",
    name: "Fountain Of Planets & Fountain Of The Fairs",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'CaptJayRuffins / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/0/0c/Unisphere_Fountains_-_The_Rocket_Thrower_01.jpg')


Zone.create(location: "(n) 45th Ave To (s) 54, 55th Ave To (e) Grand Central Pkwy To (w) 111th St",
    name: "Queens Wildlife Center",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')


Zone.create(location: "(w) Grand Central Prkwy To (n) Astral Fountain To (s) LIE",
    name: "Pavilion & Astral Fountain",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'I, GK tramrunner229 / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a3/1964_New_York_World%27s_Fair_Pavilion_from_the_within_Flushing_Meadows-Corona_Park.jpg')


Zone.create(location: "(n) Pedestrian Ramp At Roosevelt Av To (s) David Dinkins Circle",
    name: "Passerelle",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')

Zone.create(location: "(n) 69th Rd To (e) Van Wyck Expwy To (w) Grand Central Pkwy To (s) NYC",
    name: "Willow Lake",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Flushing_Meadows_Meadow_Lake_td_%282018-05-26%29_33.jpg')


Zone.create(location: "(w) Grand Central Prkwy To (e) Olmsted Center To (s) LIRR",
    name: "Olmsted Center",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')

    
Zone.create(location: "Northern Blvd To Grand Central Parkway",
    name: "Flushing Bay Promenade",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Transpoman / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/15/Flushing_Bay.jpg')


Zone.create(location: "Stadium Parking To Grand Central Parkway To Roosevelt Ave",
    name: "Flushing Meadow Entrance",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')

Zone.create(location: "w) Van Wyck Expwy To (e&s)College Point Blvd To (n) Al Oerter Parking Lot",
    name: "College Point Blvd Soccer Fields",
    park: flushing_meadows,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flushing_Meadows_Corona_Park.jpg')


# McCarren Park
puts "Creating zones for McCarren Park"

Zone.create(location: "Manhattan Ave, Leonard St, Bayard St, Lorimer St",
    name: "McCarren Park Zone 1",
    park: mccarren_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Chad Nicholson from Brooklyn, USA / CC BY-SA (https://creativecommons.org/licenses/by-sa/2.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/6/62/McCarren_Park_Pool.jpg')



Zone.create(location: "Bayard St, Lorimer St, Driggs Ave, Union Ave",
    name: "McCarren Park Zone 2",
    park: mccarren_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Jim.henderson / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/McCarren_Pk_COVID_jeh.jpg')



Zone.create(location: "N 12th St, Driggs Ave, Lorimer St, Bedford Ave",
    name: "McCarren Park Zone 3",
    park: mccarren_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Jim.henderson / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/McCarren_Pk_COVID_jeh.jpg')



Zone.create(location: "Bedford Ave, N 12th St, Berry St, N 14th St",
    name: "McCarren Park Zone 4",
    park: mccarren_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Jim.henderson / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/McCarren_Pk_COVID_jeh.jpg')



Zone.create(location: "Union Ave, N 12th St, Driggs Ave",
    name: "McCarren Park Zone 5",
    park: mccarren_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Jim.henderson / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/McCarren_Pk_COVID_jeh.jpg')



Zone.create(location: "Bedford And Nassau Aves",
    name: "McCarren Park Zone 6",
    park: mccarren_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Marek Ołdakowski / Public domain',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/d/d8/Statue_of_Jerzy_Popieluszko%2C_Popiersie_ks._Jerzego_Popie%C5%82uszki_na_Greenpoint_u_zbiegu_Nassau_Ave_i_Bedford_Ave_w_s%C4%85siedztwie_McCarren_Park_%281%29.jpg')


Zone.create(location: "Lorimer St, Driggs Ave",
    name: "Vincent V Abate Playground",
    park: mccarren_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',

    picture_attribution: 'Jim.henderson / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/McCarren_Pk_COVID_jeh.jpg')


# propect park zones
puts "Creating zones for Prospect Park"

Zone.create(location: "S Of Well House Dr., Prospect Lake, Terrace Bridge",
    name: "Peninsula",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "16th St., Park Circle, West Lake Dr.",
    name: "Prospect Park Southwest Lower",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Wooded Area: Well Hse, E.Lake, Waterfall, Hill Dr., Lullwater Bridge",
    name: "Lullwater & Boathouse",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Lullwater_south_from_Binnen-Bridge_Prospect_Park.jpg',
    picture_attribution: 'Garry R. Osgood / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/d/df/Lullwater_south_from_Binnen-Bridge_Prospect_Park.jpg')
    
Zone.create(location: "SE Of Long Meadow, Center Dr.",
    name: "Ravine & The Pools",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Prospect_Park_Brooklyn_Mar_2019_79.jpg',
    picture_attribution: 'Epicgenius / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/8/85/Prospect_Park_Brooklyn_Mar_2019_79.jpg')
    
Zone.create(location: "West Dr., Center Dr., the Pools, Arches",
    name: "Quaker Hill And Friends Cemetery",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Friends_Cemetery_road_PPW_jeh.jpg',
    picture_attribution: 'Jim.henderson / CC0',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/2/21/Friends_Cemetery_road_PPW_jeh.jpg')
    
Zone.create(location: "Prospect Lake, E Lake Dr., S Of Breeze Hill, Parking Lot",
    name: "Lakeside Center & Concert Grove",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Argyle Rd., Parade Pl., Parkside Av., Caton Ave.",
    name: "East Parade Grounds",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Park Circle, Peristyle, S. Lake Dr.",
    name: "South West Entrance",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Prospect Lake, S Lake Dr., W Lake Dr., 3 Islands, Austrian Pine",
    name: "Prospect Lake Near West Island",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Lullwater, Prospect Lake, Cleft Ridge, Lull. Bridge",
    name: "Breeze Hill",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Pergola, Lincoln Rd., East Lake Dr.",
    name: "Ocean Ave",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Lincoln Rd., Ocean Av., Willink Ent., East Lake Dr.",
    name: "Willink Hill",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Flatbush Av., Willink Ent., end Of Zoo, East Dr.",
    name: "The Zoo, Lefferts Homestead, Carousel",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Leontopithecus_rosalia_-Prospect_Park_Zoo,_Brooklyn,_New_York_City,_USA-8a.jpg',
    picture_attribution: 'Garrett Ziegler from New York, United States / CC BY (https://creativecommons.org/licenses/by/2.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Leontopithecus_rosalia_-Prospect_Park_Zoo%2C_Brooklyn%2C_New_York_City%2C_USA-8a.jpg')
    
Zone.create(location: "West Lake Dr., Well House Dr., Center Dr.",
    name: "Lookout Hill",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Prospect Park W, 7th St., 15th St.",
    name: "The Bandshell",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Prospect_Park_Brooklyn_Mar_2019_109.jpg',
    picture_attribution: 'Epicgenius / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Prospect_Park_Brooklyn_Mar_2019_109.jpg')
    
Zone.create(location: "Prospect Park W, 3rd St., 7th St.",
    name: "Litchfield Villa",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Litchfield_Villa.JPG',
    picture_attribution: 'Anira3478 / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Litchfield_Villa.JPG')
    
Zone.create(location: "S Of Center Dr., Wooded Area, Waterfall",
    name: "The Nethermead",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:ProspectPark_Brooklyn_Nethermead.jpg',
    picture_attribution: 'Garry R. Osgood / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/9/98/ProspectPark_Brooklyn_Nethermead.jpg')
    
Zone.create(location: "East Dr., Center Dr., SE Of Upper Long Meadow",
    name: "Midwood",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Prospect_Park_Brooklyn_Mar_2019_79.jpg',
    picture_attribution: 'Epicgenius / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/8/85/Prospect_Park_Brooklyn_Mar_2019_79.jpg')
    
Zone.create(location: "East Dr., West Dr., Picnic House, Payne Hill",
    name: "Upper Long Meadow",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Long_Meadow_Panorama_from_North_Prospect_Park_Foggy_Morning.png',
    picture_attribution: 'Garry R. Osgood / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Long_Meadow_Panorama_from_North_Prospect_Park_Foggy_Morning.png')
    
Zone.create(location: "West Dr., S Of Tennis House & N Of Cemetery",
    name: "Lower Long Meadow",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Long_Meadow_Panorama_from_North_Prospect_Park_Foggy_Morning.png',
    picture_attribution: 'Garry R. Osgood / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Long_Meadow_Panorama_from_North_Prospect_Park_Foggy_Morning.png')
    
Zone.create(location: "Picnic House, Tennis House, West Dr., the Pools",
    name: "Middle Long Meadow",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Long_Meadow_Panorama_from_North_Prospect_Park_Foggy_Morning.png',
    picture_attribution: 'Garry R. Osgood / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Long_Meadow_Panorama_from_North_Prospect_Park_Foggy_Morning.png')
    
Zone.create(location: "Prospect Pk Southwest Btw Prospect Pk West & 16 St",
    name: "Prospect Park Southwest Upper",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Flatbush Ave, Zoo, Arch, East Dr",
    name: "Vale Of Cashmere, Nellie's Lawn",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Prospect-Park_Nellies-Lawn.jpg',
    picture_attribution: 'Garry R. Osgood / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/0/02/Prospect-Park_Nellies-Lawn.jpg')
    
Zone.create(location: "Carroll St., 3rd St., West Dr.",
    name: "Prospect Park West",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Plaza St, Prospect Pk West Until Carrol St, Meadowport Arch, Flatbush Ave Until Endale Arch",
    name: "Main Entrance",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Prospect_Park_Entrance_From_Memorial_Arch.jpg',
    picture_attribution: 'Garry R. Osgood / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f3/Prospect_Park_Entrance_From_Memorial_Arch.jpg')
    
Zone.create(location: "Peristyle, Pergola, S. Lake Dr.",
    name: "Park Side Ave",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Coney Is. Ave., Arglye Rd., Parkside Av., Caton Ave.",
    name: "West Parade Grounds",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Annual_reports_of_the_Brooklyn_Park_Commissioners,_1861-1873%22_(1861-1873.)_(19361753542).jpg',
    picture_attribution: 'Internet Archive Book Images / No restrictions',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Annual_reports_of_the_Brooklyn_Park_Commissioners%2C_1861-1873%22_%281861-1873.%29_%2819361753542%29.jpg')
    
Zone.create(location: "Plaza St. E, Plaza St. W, Main Entrance",
    name: "Grand Army Plaza",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Grand_Army_Plaza_Brooklyn_New_York_August_2013.jpg',
    picture_attribution: 'King of Hearts / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/8/81/Grand_Army_Plaza_Brooklyn_New_York_August_2013.jpg')
    
Zone.create(location: "Prospect Lake, S Lake Dr., Carriage Concourse",
    name: "Prospect Lake Near Duck Island",
    park: prospect_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing: -1,
    average_not_crowded: -1,
    picture_attribution_link: 'https://commons.wikimedia.org/wiki/File:Prospect_Park_New_York_October_2015_003.jpg',
    picture_attribution: 'King of Hearts / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Prospect_Park_New_York_October_2015_003.jpg')



# math functions


def build_average_ratings_park update_park
    puts "Calculating ratings for " + update_park.name
    update_park_masks_average = 0.0
    update_park_distancing_average = 0.0
    update_park_not_crowded_average = 0.0

    unrated_count = 0

    update_park.zones.each do |zone|
        if zone.average_masks >= 0
            update_park_masks_average += zone.average_masks
            update_park_distancing_average += zone.average_distancing
            update_park_not_crowded_average += zone.average_not_crowded
        elsif zone.average_masks < 0
            unrated_count+= 1
        end
    end

    update_park_masks_average /= (update_park.zones.length - unrated_count)
    update_park_distancing_average /= (update_park.zones.length - unrated_count)
    update_park_not_crowded_average /= (update_park.zones.length - unrated_count)

    update_park.average_masks = update_park_masks_average
    update_park.average_distancing = update_park_distancing_average
    update_park.average_not_crowded = update_park_not_crowded_average

    update_park_rating = update_park_masks_average+update_park_distancing_average+update_park_not_crowded_average
    update_park.average_rating = update_park_rating/3
    update_park.save
end








def build_average_ratings_zone update_zone
    
    if(update_zone.posts.length > 0)
        update_zone_masks_average = 0.0
        update_zone_distancing_average = 0.0
        update_zone_not_crowded_average = 0.0

        update_zone.posts.each do |post|
            if post.masks
                update_zone_masks_average += 3.0
            end
            if post.distancing
                update_zone_distancing_average += 3.0
            end
            if post.not_crowded
                update_zone_not_crowded_average += 3.0
            end
        end

        update_zone_masks_average /= update_zone.posts.length
        update_zone_distancing_average /= update_zone.posts.length
        update_zone_not_crowded_average /= update_zone.posts.length

        update_zone.average_masks = update_zone_masks_average
        update_zone.average_distancing = update_zone_distancing_average
        update_zone.average_not_crowded = update_zone_not_crowded_average

        update_zone_rating = update_zone_masks_average+update_zone_distancing_average+update_zone_not_crowded_average
        update_zone.average_rating = update_zone_rating/3

        
    end
    update_zone.save
end

def add_posts_to_zones_in_park (update_park, update_users)
    puts "Adding ratings for " + update_park.name
    update_park.zones.each do |zone|
        if (zone.name.length % 2 === 0)
            rand(10).times do
                test_post1 = Post.create(
                    content: Faker::Hipster.paragraph(sentence_count: rand(2)),
                    masks: Faker::Boolean.boolean(true_ratio: 0.9),
                    not_crowded: Faker::Boolean.boolean(true_ratio: 0.9),
                    distancing: Faker::Boolean.boolean(true_ratio: 0.9),
                    user: update_users.sample,
                    zone: zone)
            end
        elsif(zone.name.length % 3 === 0)
            rand(10).times do
                test_post1 = Post.create(
                    content: Faker::Hipster.paragraph(sentence_count: rand(3)),
                    masks: Faker::Boolean.boolean(true_ratio: 0.6),
                    not_crowded: Faker::Boolean.boolean(true_ratio: 0.5),
                    distancing: Faker::Boolean.boolean(true_ratio: 0.5),
                    user: update_users.sample,
                    zone: zone)
            end
        else
            rand(10).times do
                test_post1 = Post.create(
                    content: Faker::Hipster.paragraph(sentence_count: rand(4)),
                    masks: Faker::Boolean.boolean(true_ratio: 0.5),
                    not_crowded: Faker::Boolean.boolean(true_ratio: 0.5),
                    distancing: Faker::Boolean.boolean(true_ratio: 0.4),
                    user: update_users.sample,
                    zone: zone)
            end
        end

        build_average_ratings_zone(zone)
    end
    build_average_ratings_park(update_park)
end



all_users = []
    puts "Creating random users"
    50.times do
        test_user = User.create(
            email:Faker::Internet.email, 
            password:Faker::Internet.password, 
            name:Faker::Internet.username, 
            location:Faker::Superhero.prefix + Faker::Superhero.name + Faker::Superhero.suffix,
            picture_url:"https://avatars.dicebear.com/api/avataaars/:"+Faker::Alphanumeric.alpha(number:4)+".svg"
        )
        # test_user.save()
        all_users.push(test_user)
end

add_posts_to_zones_in_park(central_park, all_users)
add_posts_to_zones_in_park(prospect_park, all_users)
add_posts_to_zones_in_park(flushing_meadows, all_users)
add_posts_to_zones_in_park(mccarren_park, all_users)