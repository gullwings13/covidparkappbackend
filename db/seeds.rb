# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

test_user1 = User.create(
    email:"a@a.com", 
    password:"password", 
    name:"Test", 
    location:Faker::Hipster.paragraph(sentence_count: 1), 
    picture_url:"https://avatars.dicebear.com/api/avataaars/:wer.svg"
)

test_user1.save()

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
    picture_attribution_link:'tba'
    picture_attribution: 'Jim.henderson / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/McCarren_Pk_COVID_jeh.jpg')

  
        
mccarren_park.save()

    # central park zones
    Zone.create(location: "106-CPW, W Of Drive, AC Powell Blvd",
        name: "Northwest Corner",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/north-woods.jpeg?mtime=20190117131748')

    Zone.create(location: "CPW, 86 St And West Drive, West Of Great Lawn, 85 St Transverse",
        name: "Ross Pinetum",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@arthur-ross-pinetum.jpg?mtime=20190828133859')

    Zone.create(location: "East Drive, 5 Ave, South Of Met",
        name: "Cedar Hill",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@cedar-hill.jpg?mtime=20190828133907')

    Zone.create(location: "North Of The Arsenal, South Of Wallach Walk, 5th Ave",
        name: "North Of The Arsenal",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Central_Park_Arsenal_jeh.JPG/989px-Central_Park_Arsenal_jeh.JPG')

    Zone.create(location: "South & West Sides Of Lake, N/o 72 St Transverse, Central Park West To 81 St & Transverse",
        name: "Bethesda Terrace",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_rectangle/ff-th@2x-Bethesda-Fountain.jpg?mtime=20190812104046')

    Zone.create(location: "East Drive, 72 St Transverse, 5th Ave, South Of Cedar Hill",
        name: "Pilgrim Hill & Conservatory Water",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/pilgrim-hill.jpeg?mtime=20190117131755')

    Zone.create(location: "The Great Lawn, East Drive, 85 St Transverse",
        name: "Great Lawn And Cleopatra's Needle",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://www.centralpark.com/downloads/1510/download/cleopatra-s-needle.jpe?cb=783665e2e86dabe11fdbe675f24e26c4&w=640')

    Zone.create(location: "CPW, 85 St Transverse, West Drive To 96 St",
        name: "Central Park West",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Central_Park_West_buildings_over_Lake.jpg')

    Zone.create(location: "S Of North Dr, N Of Huddlestone Br, Interior Of Drives",
        name: "Blockhouse One",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@blockhouse2.jpg?mtime=20190813100530')

    Zone.create(location: "West Drive, Center Drive, 65 St Transverse",
        name: "Heckscher Ballfields & Playground",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@heckscher-playground.jpg?mtime=20190812145918')

    Zone.create(location: "Border of Heckscher Ballfields/Wollman Rink/Center Dr/65 St Transverse/East Dr",
        name: "Dairy, Chess & Checkers House, Carousel",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@dairy-visitor-center2.jpg?mtime=20190813114301')

    Zone.create(location: "East Drive, 102 Exit, Conservancy Garden, Northern Path",
        name: "Conservatory Gardens West Landscape",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://www.centralpark.com/downloads/2499/download/the-summer-conservatory-garden.jpe?cb=783665e2e86dabe11fdbe675f24e26c4&w=1500&h=')

    Zone.create(location: "5 Ave, 103 St To 106 St",
        name: "Conservatory Garden",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/conservatory-garden.jpeg?mtime=20190117141419')

    Zone.create(location: "East Drive, Southern Path, Conservancy Garden, Harlem Meer",
        name: "Nutter's Battery & Fort Clinton Site",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/nutters-battery.jpeg?mtime=20190117131749')

    Zone.create(location: "Center Drive To East Drive (including Gapstow Bridge)",
        name: "Wollman Rink",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://images.fineartamerica.com/images-medium-large-5/skaters-central-park-wollman-rink-regina-geoghan.jpg')

    Zone.create(location: "CPW, N Of 100 Str, W Of West Dr, S Of 105 St",
        name: "The Pool",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/park_activity/_rectangle/act-th@2x-Swimming.jpg')

    Zone.create(location: "Center Of Park, 102-106 Sts, Btwn Drives",
        name: "Loch Ravine",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/loch.jpeg?mtime=20190117133659')

    Zone.create(location: "N Of 105, E Of CPW, W Of West Dr, SE Of 106 Path",
        name: "The Great Hill",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@3x-Great-Hill.jpg?mtime=20191115162315')

    Zone.create(location: "East Drive, 97 St Transverse, 5 Ave, E 102 St Entrance",
        name: "East Meadow",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@East-Meadow.jpg?mtime=20191118103811')

    Zone.create(location: "West Drive, 97 St Transverse, North Meadow Recreation Center South Of The North Meadow",
        name: "North Meadow Recreation Center",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/north-meadow-recreation-center.jpeg?mtime=20190117131748')

    Zone.create(location: "CPW, 79 St Transverse, West Drive To 85 St",
        name: "79th St Yard And Summit Rock",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://www.centralpark.com/downloads/8305/download/summit-rock1.jpg?cb=91f112082dc29141d32bcb6a0438a3fb&w=2048')

    Zone.create(location: "Mid-park In The 80's",
        name: "Reservoir Running Track & Landscape",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/blog/_rectangle/blog-rect@2x-Runners-Guide-2.jpg?mtime=20191024172201')

    Zone.create(location: "66 St To 72 St, CPW To West Drive",
        name: "Central Park West",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Central_Park_West_buildings_over_Lake.jpg')

    Zone.create(location: "West Drive, CPW, 65 St Transverse",
        name: "Central Park West",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Central_Park_West_buildings_over_Lake.jpg')

    Zone.create(location: "Columbus Circle, West Drive, CPS, Center Drive",
        name: "Central Park South",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://cdn-img-feed.streeteasy.com/nyc/image/52/289867852.jpg')

    Zone.create(location: "East Drive, Wallach Walk, 5th Ave, 72 St Transverse",
        name: "Wallach Walk And East Green",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/blog/_576x424_crop_center-center_100/blog-rect@2x-sanctuary1.jpg?mtime=20200408144724')

    Zone.create(location: "5 Ave Btw E 60 and E 65 Sts",
        name: "Wien Walk And Arsenal",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@3x-Wien-Walk.jpg?mtime=20191115162025')

    Zone.create(location: "W 72, 72 St Transverse, Lake",
        name: "Strawberry Fields",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@2x-Strawberry-Fields.jpg?mtime=20191118095336')

    Zone.create(location: "West Drive To 92 St, Reservoir, East Drive, 97 St Transverse",
        name: "Reservoir (Northwest)",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Jacqueline_Kennedy_Onassis_Reservoir.jpg/1200px-Jacqueline_Kennedy_Onassis_Reservoir.jpg')

    Zone.create(location: "Reservoir To Bridge 24 (@ 86 St), West Drive, 5 Ave To 90 St",
        name: "Reservoir (Southeast)",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@3x-Reservoir.jpg?mtime=20191012150002')

    Zone.create(location: "Reservoir, 90 St, 5 Ave, 97 St Transverse",
        name: "Reservoir (Northeast)",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://www.centralpark.com/downloads/4371/download/reservoir.jpe?cb=cd4f9a3718f007ca5ec676c4f42a7da1')

    Zone.create(location: "CPW, W 97 St, West Drive, W 100 St",
        name: "Central Park West",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://www.ostrovrealty.com/wp-content/uploads/2017/05/1-Central-Park-West-Unit-40D-1.jpg')

    Zone.create(location: "West Drive, East Drive, 97 St Transverse, South Of Loch Ravine",
        name: "North Meadow",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@3x-North-Meadow.jpg?mtime=20191012153441')

    Zone.create(location: "Center Drive To East Drive, W 59 St",
        name: "Hallett Nature Sanctuary And Pond",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@1x-Hallett.jpg?mtime=20191012140851')

    Zone.create(location: "West Drive, 79 St Transverse, East Drive, South Of The Great Lawn",
        name: "Belvdre. Cstl., Turtle Pond, Shkspr Grdn",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@belvedere-castle.jpg?mtime=20190814144013')

    Zone.create(location: "5 Ave, CPN, Dana Discovery Center, Powell Blvd",
        name: "Frawleys' Run",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://www.nycgovparks.org/photo_gallery/full_size/17854.jpg')

    Zone.create(location: "North & South Of The Gill, Btwn 79 St Transverse, the Lake, East Drive",
        name: "The Ramble",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ramble.jpeg?mtime=20190117131802')

    Zone.create(location: "Sheep Meadow, Center Drive, 72 St",
        name: "The Mall And Rumsey Playfield",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://www.centralpark.com/downloads/5367/download/summerstage_sound.jpg.jpe?cb=783665e2e86dabe11fdbe675f24e26c4&w=640&h=')

    Zone.create(location: "72 St Transverse, West Drive, 65 St Transverse, Volleyball Courts",
        name: "Sheep Meadow",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@sheep-meadow2.jpg?mtime=20190816105343')

    Zone.create(location: "East Drive, 79 St Transverse, 5th Ave To 86 St",
        name: "The Metropolitan Museum Of Art",
        park: central_park,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'tba',
        picture_url: 'https://lh3.googleusercontent.com/oeElhcz08ou_KACQV0FTlEfPtkYEz-kBA57YDNvMG8Dg9fij2L09VsIhhytVa9eu')


# Flushing meadows

        
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
        picture_url: 'https://commons.wikimedia.org/wiki/File:Unisphere_Fountains_-_The_Rocket_Thrower.jpg')
   




    Zone.create(location: "(e) Grand Central Pkwy To (w)111th St. To (n) Heckscher Children Farm",
        name: "Ballfields",
        park: flushing_meadows,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
        picture_url: 'https://commons.wikimedia.org/wiki/File:Flushing_Meadows_Meadow_Lake_td_(2018-05-26)_44_-_Baseball_Field_13.jpg')



    Zone.create(location: "(e) Van Wyck Expwy To (n)LIRR To (w)Passerelle Building",
        name: "Meadow Lake NW",
        park: flushing_meadows,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
        picture_url: 'https://commons.wikimedia.org/wiki/File:Flushing_Meadows_Meadow_Lake_td_(2018-05-26)_27.jpg')



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
        picture_url: 'https://commons.wikimedia.org/wiki/File:Flushing_Meadows_Meadow_Lake_td_(2018-05-26)_47.jpg')



    Zone.create(location: "111 St & Saultell & 56 Aves",
        name: "Playground For All Children",
        park: flushing_meadows,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
        picture_url: 'https://commons.wikimedia.org/wiki/File:Playground_for_All_Children_Qns_td_(2019-03-21)_038.jpg')


    Zone.create(location: "Jewel Ave & Van Wyck Exwy",
        name: "Triassic Playground",
        park: flushing_meadows,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'JonathanRe (original uploader); Van helsing and DarkEvil (later versions) / CC BY-SA (http://creativecommons.org/licenses/by-sa/3.0/)',

      
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
        picture_url: 'https://commons.wikimedia.org/wiki/File:Mauro_Playground_td_(2019-05-05)_114.jpg')



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
        picture_url: 'https://commons.wikimedia.org/wiki/File:Flushing_Meadows_Meadow_Lake_td_(2018-05-26)_63.jpg')



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
        picture_url: 'https://commons.wikimedia.org/wiki/File:Unisphere_in_summer.jpg')



    Zone.create(location: "(e) Van Wyck Expwy, (w) N Of Assembly Area, (s) Fountain Of The Planets",
        name: "North Of Fountain Of The Planets",
        park: flushing_meadows,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'Pablo Costa Tirado (… / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)Pablo Costa Tirado (… / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)',
        picture_url: 'https://commons.wikimedia.org/wiki/File:Vista_de_Flushing_Meadows_Corona_Park_cerca_de_la_Unisfera_-_panoramio.jpg')


    Zone.create(location: "Path Of Commerce, Fountain Of The Fairs Prom S, Un Ave S, Path Of Africa",
        name: "South Lawn",
        park: flushing_meadows,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
        picture_url: 'https://commons.wikimedia.org/wiki/File:Flushing_Meadows_Meadow_Lake_td_(2018-05-26)_10.jpg')

      
    Zone.create(location: "(e) Meadow Lake To (sw) Grand Central Parkway To (se) Van Wyck Expwy ",
        name: "Meadow Lake South",
        park: flushing_meadows,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
        picture_url: 'https://commons.wikimedia.org/wiki/File:Flushing_Meadows_Meadow_Lake_td_(2018-05-26)_06.jpg')


    Zone.create(location: "Path Of Commerce, Fountain Of The Fairs Prom N, Un Ave N",
        name: "North Lawn",
        park: flushing_meadows,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
        picture_url: 'https://commons.wikimedia.org/wiki/File:Flushing_Meadows_Meadow_Lake_td_(2018-05-26)_12.jpg')


    Zone.create(location: "(n) LIE To (s) Meadow Lake To (e) Van Wyck Expwy Extension",
        name: "Meadow Lake North",
        park: flushing_meadows,
        average_rating: -1,
        average_masks:-1,
        average_distancing:-1,
        average_not_crowded:-1,
        picture_attribution_link: 'tba',
        picture_attribution: 'Tdorante10 / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
        picture_url: 'https://commons.wikimedia.org/wiki/File:Flushing_Meadows_Meadow_Lake_td_(2018-05-26)_48.jpg')


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
        picture_url: 'https://commons.wikimedia.org/wiki/File:Unisphere_Fountains_-_The_Rocket_Thrower_01.jpg')


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
        picture_url: 'https://commons.wikimedia.org/wiki/File:1964_New_York_World%27s_Fair_Pavilion_from_the_within_Flushing_Meadows-Corona_Park.jpg')


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
        picture_url: 'https://commons.wikimedia.org/wiki/File:Flushing_Meadows_Meadow_Lake_td_(2018-05-26)_33.jpg')


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
        picture_url: 'https://commons.wikimedia.org/wiki/File:Flushing_Bay.jpg')


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
    picture_url: 'https://commons.wikimedia.org/wiki/File:McCarren_Pk_COVID_jeh.jpg')



Zone.create(location: "Bedford Ave, N 12th St, Berry St, N 14th St",
    name: "McCarren Park Zone 4",
    park: mccarren_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Jim.henderson / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://commons.wikimedia.org/wiki/File:McCarren_Pk_COVID_jeh.jpg')



Zone.create(location: "Union Ave, N 12th St, Driggs Ave",
    name: "McCarren Park Zone 5",
    park: mccarren_park,
    average_rating: -1,
    average_masks:-1,
    average_distancing:-1,
    average_not_crowded:-1,
    picture_attribution_link: 'tba',
    picture_attribution: 'Jim.henderson / CC BY-SA (https://creativecommons.org/licenses/by-sa/4.0)',
    picture_url: 'https://commons.wikimedia.org/wiki/File:McCarren_Pk_COVID_jeh.jpg')



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
    picture_url: 'https://commons.wikimedia.org/wiki/File:McCarren_Pk_COVID_jeh.jpg')



# math functions


def build_average_ratings_park update_park
    update_park_masks_average = 0.0
    update_park_distancing_average = 0.0
    update_park_not_crowded_average = 0.0

    update_park.zones.each do |zone|
        update_park_masks_average += zone.average_masks
        update_park_distancing_average += zone.average_distancing
        update_park_not_crowded_average += zone.average_not_crowded
    end

    update_park_masks_average /= update_park.zones.length
    update_park_distancing_average /= update_park.zones.length
    update_park_not_crowded_average /= update_park.zones.length

    update_park.average_masks = update_park_masks_average
    update_park.average_distancing = update_park_distancing_average
    update_park.average_not_crowded = update_park_not_crowded_average

    update_park_rating = update_park_masks_average+update_park_distancing_average+update_park_not_crowded_average
    update_park.average_rating = update_park_rating/3
    update_park.save
end








def build_average_ratings_zone update_zone

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
    update_zone.save
end

def add_posts_to_zones_in_park (update_park, update_user)
    update_park.zones.each do |zone|

        if (zone.name.length % 2 === 0)
            10.times do
                test_post1 = Post.create(
                    content: Faker::Hipster.paragraph(sentence_count: 2),
                    masks: Faker::Boolean.boolean(true_ratio: 0.9),
                    not_crowded: Faker::Boolean.boolean(true_ratio: 0.9),
                    distancing: Faker::Boolean.boolean(true_ratio: 0.9),
                    user: update_user,
                    zone: zone)
            end
        elsif(zone.name.length % 3 === 0)
            10.times do
                test_post1 = Post.create(
                    content: Faker::Hipster.paragraph(sentence_count: 2),
                    masks: Faker::Boolean.boolean(true_ratio: 0.6),
                    not_crowded: Faker::Boolean.boolean(true_ratio: 0.5),
                    distancing: Faker::Boolean.boolean(true_ratio: 0.5),
                    user: update_user,
                    zone: zone)
            end
        else
            10.times do
                test_post1 = Post.create(
                    content: Faker::Hipster.paragraph(sentence_count: 2),
                    masks: Faker::Boolean.boolean(true_ratio: 0.3),
                    not_crowded: Faker::Boolean.boolean(true_ratio: 0.3),
                    distancing: Faker::Boolean.boolean(true_ratio: 0.3),
                    user: update_user,
                    zone: zone)
            end
        end

        build_average_ratings_zone(zone)
    end
    build_average_ratings_park(update_park)
end




add_posts_to_zones_in_park(central_park, test_user1)
add_posts_to_zones_in_park(flushing_meadows, test_user1)
add_posts_to_zones_in_park(mccarren_park, test_user1)