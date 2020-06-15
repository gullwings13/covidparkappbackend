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
    picture_url:"https://avataaars.io/?avatarStyle=Circle&topType=LongHairStraight&accessoriesType=Blank&hairColor=BrownDark&facialHairType=Blank&clotheType=BlazerShirt&eyeType=Default&eyebrowType=Default&mouthType=Default&skinColor=Light"
)


test_user1.save()

central_park = Park.create(
    name:"Central Park",
    boro:"Manhattan",
    address:"Central Park stretches from North 110th Street to Central Park South (59th Street), and from Central Park West (8th Avenue) to 5th Ave.",
    link:"https://www.nycgovparks.org/parks/central-park", 
    average_rating:-1,
    picture_url: 'https://news.virginia.edu/sites/default/files/article_image/central_park_header.jpg')

central_park.save()


    Zone.create(location: "106-CPW, W Of Drive, AC Powell Blvd",
        name: "Northwest Corner",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/north-woods.jpeg?mtime=20190117131748')

    Zone.create(location: "CPW, 86 St And West Drive, West Of Great Lawn, 85 St Transverse",
        name: "Ross Pinetum",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@arthur-ross-pinetum.jpg?mtime=20190828133859')

    Zone.create(location: "East Drive, 5 Ave, South Of Met",
        name: "Cedar Hill",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@cedar-hill.jpg?mtime=20190828133907')

    Zone.create(location: "North Of The Arsenal, South Of Wallach Walk, 5th Ave",
        name: "North Of The Arsenal",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Central_Park_Arsenal_jeh.JPG/989px-Central_Park_Arsenal_jeh.JPG')

    Zone.create(location: "South & West Sides Of Lake, N/o 72 St Transverse, Central Park West To 81 St & Transverse",
        name: "Bethesda Terrace",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_rectangle/ff-th@2x-Bethesda-Fountain.jpg?mtime=20190812104046')

    Zone.create(location: "East Drive, 72 St Transverse, 5th Ave, South Of Cedar Hill",
        name: "Pilgrim Hill & Conservatory Water",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/pilgrim-hill.jpeg?mtime=20190117131755')

    Zone.create(location: "The Great Lawn, East Drive, 85 St Transverse",
        name: "Great Lawn And Cleopatra's Needle",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://www.centralpark.com/downloads/1510/download/cleopatra-s-needle.jpe?cb=783665e2e86dabe11fdbe675f24e26c4&w=640')

    Zone.create(location: "CPW, 85 St Transverse, West Drive To 96 St",
        name: "Central Park West",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Central_Park_West_buildings_over_Lake.jpg')

    Zone.create(location: "S Of North Dr, N Of Huddlestone Br, Interior Of Drives",
        name: "Blockhouse One",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@blockhouse2.jpg?mtime=20190813100530')

    Zone.create(location: "West Drive, Center Drive, 65 St Transverse",
        name: "Heckscher Ballfields & Playground",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@heckscher-playground.jpg?mtime=20190812145918')

    Zone.create(
        location: "Border of Heckscher Ballfields/Wollman Rink/Center Dr/65 St Transverse/East Dr",
        name: "Dairy, Chess & Checkers House, Carousel",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@dairy-visitor-center2.jpg?mtime=20190813114301')

    Zone.create(location: "East Drive, 102 Exit, Conservancy Garden, Northern Path",
        name: "Conservatory Gardens West Landscape",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://www.centralpark.com/downloads/2499/download/the-summer-conservatory-garden.jpe?cb=783665e2e86dabe11fdbe675f24e26c4&w=1500&h=')

    Zone.create(location: "5 Ave, 103 St To 106 St",
        name: "Conservatory Garden",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/conservatory-garden.jpeg?mtime=20190117141419')

    Zone.create(location: "East Drive, Southern Path, Conservancy Garden, Harlem Meer",
        name: "Nutter's Battery & Fort Clinton Site",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/nutters-battery.jpeg?mtime=20190117131749')

    Zone.create(location: "Center Drive To East Drive (including Gapstow Bridge)",
        name: "Wollman Rink",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://images.fineartamerica.com/images-medium-large-5/skaters-central-park-wollman-rink-regina-geoghan.jpg')

    Zone.create(location: "CPW, N Of 100 Str, W Of West Dr, S Of 105 St",
        name: "The Pool",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/park_activity/_rectangle/act-th@2x-Swimming.jpg')

    Zone.create(location: "Center Of Park, 102-106 Sts, Btwn Drives",
        name: "Loch Ravine",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/loch.jpeg?mtime=20190117133659')

    Zone.create(location: "N Of 105, E Of CPW, W Of West Dr, SE Of 106 Path",
        name: "The Great Hill",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@3x-Great-Hill.jpg?mtime=20191115162315')

    Zone.create(location: "East Drive, 97 St Transverse, 5 Ave, E 102 St Entrance",
        name: "East Meadow",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@East-Meadow.jpg?mtime=20191118103811')

    Zone.create(location: "West Drive, 97 St Transverse, North Meadow Recreation Center South Of The North Meadow",
        name: "North Meadow Recreation Center",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/north-meadow-recreation-center.jpeg?mtime=20190117131748')

    Zone.create(location: "CPW, 79 St Transverse, West Drive To 85 St",
        name: "79th St Yard And Summit Rock",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://www.centralpark.com/downloads/8305/download/summit-rock1.jpg?cb=91f112082dc29141d32bcb6a0438a3fb&w=2048')

    Zone.create(location: "Mid-park In The 80's",
        name: "Reservoir Running Track & Landscape",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/blog/_rectangle/blog-rect@2x-Runners-Guide-2.jpg?mtime=20191024172201')

    Zone.create(location: "66 St To 72 St, CPW To West Drive",
        name: "Central Park West",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Central_Park_West_buildings_over_Lake.jpg')

    Zone.create(location: "West Drive, CPW, 65 St Transverse",
        name: "Central Park West",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Central_Park_West_buildings_over_Lake.jpg')

    Zone.create(location: "Columbus Circle, West Drive, CPS, Center Drive",
        name: "Central Park South",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://cdn-img-feed.streeteasy.com/nyc/image/52/289867852.jpg')

    Zone.create(location: "East Drive, Wallach Walk, 5th Ave, 72 St Transverse",
        name: "Wallach Walk And East Green",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/blog/_576x424_crop_center-center_100/blog-rect@2x-sanctuary1.jpg?mtime=20200408144724')

    Zone.create(location: "5 Ave Btw E 60 and E 65 Sts",
        name: "Wien Walk And Arsenal",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@3x-Wien-Walk.jpg?mtime=20191115162025')

stawberry = Zone.create(location: "W 72, 72 St Transverse, Lake",
        name: "Strawberry Fields",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@2x-Strawberry-Fields.jpg?mtime=20191118095336')

    Zone.create(location: "West Drive To 92 St, Reservoir, East Drive, 97 St Transverse",
        name: "Reservoir (Northwest)",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Jacqueline_Kennedy_Onassis_Reservoir.jpg/1200px-Jacqueline_Kennedy_Onassis_Reservoir.jpg')

    Zone.create(location: "Reservoir To Bridge 24 (@ 86 St), West Drive, 5 Ave To 90 St",
        name: "Reservoir (Southeast)",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@3x-Reservoir.jpg?mtime=20191012150002')

    Zone.create(location: "Reservoir, 90 St, 5 Ave, 97 St Transverse",
        name: "Reservoir (Northeast)",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://www.centralpark.com/downloads/4371/download/reservoir.jpe?cb=cd4f9a3718f007ca5ec676c4f42a7da1')

    Zone.create(location: "CPW, W 97 St, West Drive, W 100 St",
        name: "Central Park West",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://www.ostrovrealty.com/wp-content/uploads/2017/05/1-Central-Park-West-Unit-40D-1.jpg')

    Zone.create(location: "West Drive, East Drive, 97 St Transverse, South Of Loch Ravine",
        name: "North Meadow",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@3x-North-Meadow.jpg?mtime=20191012153441')

    Zone.create(location: "Center Drive To East Drive, W 59 St",
        name: "Hallett Nature Sanctuary And Pond",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@1x-Hallett.jpg?mtime=20191012140851')

    Zone.create(
        location: "West Drive, 79 St Transverse, East Drive, South Of The Great Lawn",
        name: "Belvdre. Cstl., Turtle Pond, Shkspr Grdn",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@belvedere-castle.jpg?mtime=20190814144013')

    Zone.create(location: "5 Ave, CPN, Dana Discovery Center, Powell Blvd",
        name: "Frawleys' Run",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://www.nycgovparks.org/photo_gallery/full_size/17854.jpg')

    Zone.create(location: "North & South Of The Gill, Btwn 79 St Transverse, the Lake, East Drive",
        name: "The Ramble",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ramble.jpeg?mtime=20190117131802')

    Zone.create(location: "Sheep Meadow, Center Drive, 72 St",
        name: "The Mall And Rumsey Playfield",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://www.centralpark.com/downloads/5367/download/summerstage_sound.jpg.jpe?cb=783665e2e86dabe11fdbe675f24e26c4&w=640&h=')

    Zone.create(location: "72 St Transverse, West Drive, 65 St Transverse, Volleyball Courts",
        name: "Sheep Meadow",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://d17wymyl890hh0.cloudfront.net/new_images/feature_facilities/_wide/ff-wide@sheep-meadow2.jpg?mtime=20190816105343')

theMET = Zone.create(location: "East Drive, 79 St Transverse, 5th Ave To 86 St",
        name: "The Metropolitan Museum Of Art",
        park: central_park,
        average_rating: -1,
        picture_url: 'https://lh3.googleusercontent.com/oeElhcz08ou_KACQV0FTlEfPtkYEz-kBA57YDNvMG8Dg9fij2L09VsIhhytVa9eu')



10.times do
    test_post1 = Post.create(
        content: Faker::Hipster.paragraph(sentence_count: 2),
        masks: Faker::Boolean.boolean(true_ratio: 0.7),
        not_crowded: Faker::Boolean.boolean(true_ratio: 0.4),
        distancing: Faker::Boolean.boolean(true_ratio: 0.4),
        user: test_user1,
        zone: theMET)
end

10.times do
    test_post1 = Post.create(
        content: Faker::Hipster.paragraph(sentence_count: 2),
        masks: Faker::Boolean.boolean(true_ratio: 0.7),
        not_crowded: Faker::Boolean.boolean(true_ratio: 0.4),
        distancing: Faker::Boolean.boolean(true_ratio: 0.4),
        user: test_user1,
        zone: stawberry)
end