# require 'csv'

# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


# Cleans and resets database.
Category.delete_all
Activity.delete_all
User.delete_all
Chatroom.delete_all
Message.delete_all

# Create default users
User.create(email: "sam@user.com", nickname: 'SammyMacDaddy', password: "password")
User.create(email: "thembi@user.com", nickname: 'Thembizzle', password: "password")
User.create(email: "shiv@user.com", nickname: "BigShiv", password: "password")
User.create(email: "fili@user.com", nickname: "FiliSexy", password: "password")
User.create(email: "chuck-norris@user.com", nickname: "Sensei Chuck", password: "password")

# Create default chatrooms
Chatroom.create(name: "general")

# Create categories(moods)
Category.create(name: "Sweat")
Category.create(name: "Romance")
Category.create(name: "Outdoorsy")
Category.create(name: "Low-Fi")
Category.create(name: "Turnt")
Category.create(name: "Broke-Ass")

# Sweat Category
Category.find_by(name: "Sweat").activities.create(name: "Yoga at Inspire 9", address: "1/41-43 Stewart St, Richmond VIC 3121", description: "Do yoga with friends!", start_time: "2021-03-12", URL:"https://www.inspire9.com/")
Category.find_by(name: "Sweat").activities.create(name: "Workout with The Rock", address: "367 Flinders St, Melbourne VIC 3000", description: "Work on your Gainz or just stare at The Rock all day and be aroused.", start_time: "2021-03-12", URL:"https://therockgear.com/workout/")
Category.find_by(name: "Sweat").activities.create(name: "Pole Dancing", address: "6/277 Flinders Ln, Melbourne Victoria 3000", description: "Twerk them calories away!", start_time: "2021-03-12", URL:"https://www.thepoleroom.com.au/intropack/?gclid=Cj0KCQiAnKeCBhDPARIsAFDTLTLDOtcPqk_KcXPNl43e2YVKqYIb1jmct5SRYqZXBvl7swQaZ8D9x5AaAp6ZEALw_wcB")
Category.find_by(name: "Sweat").activities.create(name: "Learn how to roundhouse kick", address: "191 Racecourse Rd, Kensington VIC 3031", description: "Come and learn how to roundhouse kick like the undefeated intergalactic champion, Chuck Norris!", start_time: "2021-03-30", URL:"https://g.co/kgs/Y7nUJV")
Category.find_by(name: "Sweat").activities.create(name: "Salsa dancing", address: "1/281 Swan St, Richmond VIC 3121", description: "Learn how to move your body like an elegant, majestic swan from the legendary, Damian Lonel.", start_time: "2021-04-12", URL:"https://youtu.be/k9qVeZU4msw")
Category.find_by(name: "Sweat").activities.create(name: "Cocktails and Zumba", address: "130 Gladstone St, South Melbourne VIC 3205", description: "Cocktails and Zumba? Yes.", start_time: "2021-04-30", URL:"https://youtu.be/gCROJglfRxo")
Category.find_by(name: "Sweat").activities.create(name: "Bodhi & Ride", address: "416-418 Bay Street, Port Melbourne, VIC 3207", description: " This spin class is anything but typical, blending endurance, interval and weight training into a 40-minute clubbing experience where stilettos are replaced by trainers. Sweat it out with rock star instructors under strobe lights with a 3 million dollar sound system blasting the latest club tracks..", start_time: "2021-03-30", URL:"https://www.bodhiandride.com.au/")
Category.find_by(name: "Sweat").activities.create(name: "Bey Dance", address: "4-10 Yorkshire Street, Richmond, Victoria 3121", description: "Unleash your inner diva at a dance class dedicated to Beyonce. Bey Dance takes your secret passion for dancing around your room and brings it to the main stage where your Bey Captains are ready to teach you the chorography to hits like Love on Top, Single Ladies and Run the World.", start_time: "2021-04-01", URL:"http://www.dancefactory.com.au/")
Category.find_by(name: "Sweat").activities.create(name: "Snowga", address: "16 Schuss St, Falls Creek Victoria 3699", description: "If you’re bored with Bikram and Disco Yoga and don’t mind frost bite then it’s time to visit the slopes and try Snowga. Greet the day in the downward dog position at dawn and become one with the profound silence of the mountains. Stretch out your hamstrings, quadriceps and shoulders before you carve up the mountain with a day of skiing, followed by a restorative yoga session at the end of the day. !", start_time: "2021-04-01", URL:"https://www.theyogavine.com.au/")
Category.find_by(name: "Sweat").activities.create(name: "Sky High Yoga", address: "The District Docklands, 101 Waterfront Way, Docklands VIC 3008", description: "Connect again with your inner guiding star with a Slow Flow Yoga practice on the Melbourne Star. Meditate in peace above the world in the quiet of fully enclosed glass cabins, temperature-controlled to create the perfect environment.Stretch and relax with popular and traditional yoga postures, then return to earth for a drink of your choice from Boost Juice.", start_time: "2021-05-01", URL:"https://melbournestar.com/experiences/yoga-sky/")
Category.find_by(name: "Sweat").activities.create(name: "F* It", address: "544 Mt Alexander Rd, Ascot Vale, Victoria 3032", description: " Thumping beats first thing in the morning. The kind that makes your drink bottle reverb like Jurassic Park. It means lasers and coloured lighting that changes based on your instructor’s mood. It means LED-lined mirrors and ‘murder black’ treadmills with built-in touchscreen Android systems. It’s kind of like that underground rave scene in the Matrix, only everyone’s incredibly buff.", start_time: "2021-05-01", URL:"https://fk-it.com.au/" )

# Romance Category
Category.find_by(name: "Romance").activities.create(name: "Cute dinner with Thembi", address: "4/3 Murphy St, South Yarra VIC 3141", description: "Have a cute dinner with Thembi (pop the question at this romantic venue)", start_time: "2021-03-12", URL:"https://www.youtube.com/playlist?list=UUZPQfUQNPZojG8DCdg8Mh9Q" )
Category.find_by(name: "Romance").activities.create(name: "Meet the love guru", address: "1/41-43 Stewart St, Richmond VIC 3121", description: "The love guru, Akash. Will be giving a lecture on how to find love.", start_time: "2021-03-12", URL:"https://akash7.netlify.app/")
Category.find_by(name: "Romance").activities.create(name: "Married at first sight experience", address: "234 Elgar Rd, Box Hill South VIC 3128", description: "Show up, get married and see how you go.", start_time: "2021-06-07", URL:"https://9now.nine.com.au/married-at-first-sight")
Category.find_by(name: "Romance").activities.create(name: "Couples Olympics", address: "Melbourne Cricket Ground", description: "Bring your self and your partner and achieve couple greatness.", start_time: "2021-09-01", URL:"https://www.pinterest.com.au/jessirose1/couples-olympics/")
Category.find_by(name: "Romance").activities.create(name: "#InstaWorthy", address: "525 Collins St, Melbourne VIC", description: "Let us take you to all the most romantic locations in Melbourne so you can take memorable snaps with your partner", start_time: "2021-06-01", URL:"https://www.instagram.com/explore/tags/instaworthy/?hl=en")
Category.find_by(name: "Romance").activities.create(name: "Netflix and chill.. on a roof", address: "252 Swanston St, Melbourne VIC 3000", description: "Take your Netflix and chill game to the next level, literally. Enjoy the outdoor cinema on top or spend the night viewing the city lights.", start_time: "2021-06-01", URL:"https://g.co/kgs/EjNxi5")
Category.find_by(name: "Romance").activities.create(name: "The Colonial Tram Car Restaurant", address: "125 Normanby Road, South Melbourne, Victoria, 3205", description: "The Colonial Tramcar Restaurant is an elegant dining experience unique to Melbourne. Behold the sights as you comfortably cruise around the city while enjoying a seasonal menu and quality Australian wines from the all-inclusive bar. Choose between the luncheon four-course meal, early dinner three-course meal and late dinner five-course meal as well as pre-theatre dining.", start_time: "2021-04-01", URL:"https://tramrestaurant.com.au/")
Category.find_by(name: "Romance").activities.create(name: "Dinner in the Sky", address: "26 Observatory Rd, Mount Dandenong Victoria 3767", description: "Hoisted 50 metres into the air, Dinner in the Sky is the most suspenseful gourmet experience in the world. The dangling dinner table seats 22 people along with the chef, sommelier and waiting team, who stand in the centre ensuring your experience is of the highest quality", start_time: "2021-03-19", URL:"https://www.skyhighmtdandenong.com.au/dining/")
Category.find_by(name: "Romance").activities.create(name: "The Salsa Foundation", address: "600 Little Collins Street, Melbourne, Victoria, 3000", description: "Leave your ego at the door, and hit the dance floor to really impress your date at a salsa class. It doesn’t matter if you’ve never danced before or don’t know you cha-cha from your foxtrot, the Salsa Foundation welcomes beginners and runs free classes every Wednesday and Thursday where even those with two left feet can learn a move or two.", start_time: "2021-03-12", URL:"https://www.thesalsafoundation.com.au/")
Category.find_by(name: "Romance").activities.create(name: "Underground Cinema", address: "Melbourne, Victoria, 3000", description: "Keep the mystery alive by taking your date to Underground Cinema, a spot that aims to create immersive worlds that merge traditional forms of storytelling and cinema. The themed events encourage people to deck up in fancy dress and show up at an undisclosed location, to watch a mystery movie that is only revealed when the film starts rolling. From a warehouse to a forgotten ballroom, you never know where the Underground Cinema will appear.", start_time: "2021-03-12", URL:"https://www.undergroundcinema.com.au/")
Category.find_by(name: "Romance").activities.create(name: "Melbourne Planetarium", address: "2 Booker Street, Melbourne Victoria 3015", description: "For an out-of-this-world date, visit the Melbourne Planetarium where you can recline under the stars and watch an awe-inspiring cosmic presentation across the 16m (53ft) domed ceiling. Contemplate the mysteries of the universe together as you watch a dazzling audio and visual display followed by a live presentation of the night sky, guaranteed to make your affections skyrocket.", start_time: "2021-03-12", URL:"https://museumsvictoria.com.au/scienceworks/whats-on/planetarium-nights/")
Category.find_by(name: "Romance").activities.create(name: "Grape stomping at Noisy Ritual", address: "249 Lygon Street, Brunswick East, Victoria 3057", description: "Melbourne’s first urban winery Noisy Ritual allows visitors the opportunity to make their own wine. Get your hands and feet dirty in a grape-to-glass experience which not only demystifies the process of winemaking, but also makes for a memorable and hilarious date. Noisy Ritual also offers wine-making workshops and barrel tastings.", start_time: "2021-03-12", URL:"https://noisyritual.com.au/")
Category.find_by(name: "Romance").activities.create(name: "Punting on the lake", address: "Ornamental Lake, Melbourne, Victoria 3004", description: "Enjoy a romantic punt ride through Melbourne’s iconic Royal Botanic Gardens and see the picturesque gardens from a whole new perspective. Sitting side by side, you’ll glide through the shallow waters of the Ornamental Lake, watching for adorable turtles. Tours last 30 minutes and each punt can seat up to eight people.", start_time: "2021-03-12", URL:"https://puntingonthelake.com.au/")
Category.find_by(name: "Romance").activities.create(name: "Old Melbourne Gaol Night Tours", address: "377 Russell Street, Melbourne, Victoria 3000", description: "The spine-tingling range of night tours run by the Old Melbourne Gaol includes a Night in the Watch House, the Hangman’s Night Tour and the ‘Ghost? What Ghost!’ tour. Cast in candlelight, these haunting tours provide the perfect opportunity to hold tightly onto one another as you listen to frightful stories of the prison and executions, including that of Ned Kelly.", start_time: "2021-04-12", URL:"https://www.oldmelbournegaol.com.au/hangmans-night-tour/")
Category.find_by(name: "Romance").activities.create(name: "Zoo Twilights", address: "Elliott Avenue, Parkville, Victoria 3052", description: "A longstanding summer favourite, Zoo Twilights is a unique picnic and concert experience created for support against wildlife extinction. Set against a backdrop of growling lions and gleeful birds, Melbourne Zoo hosts 17 concerts over 17 nights with a lineup including local and international acts. Gates open at 5.30pm, allowing you to roam through the zoo before the concert starts.", start_time: "2021-03-12", URL:"https://zootwilights.org.au/")
Category.find_by(name: "Romance").activities.create(name: "Glow Golf", address: "Shop 35 Star Crescent, Docklands, Victoria, 3008", description: "Show off your golf skills in the dark at the smallest yet grooviest mini golf course in Australia, featuring 10 holes under UV lighting. Putt through Australia’s iconic attractions, including the Great Barrier Reef and the Outback with glow-in-the-dark clubs and balls. Remember to wear your best fluoro or bright whites for maximum effect.", start_time: "2021-03-12", URL:"http://www.glowgolf.com.au/")


# Outdoorsy Category
Category.find_by(name: "Outdoorsy").activities.create(name: "Walking at the Dandenongs", address: "School Rd, Tremont VIC 3786", description: "Go for a walk through the bush!", start_time: "2021-03-12", URL:"https://visitdandenongranges.com.au/mount-dandenong")
Category.find_by(name: "Outdoorsy").activities.create(name: "Tour d'Altona", address: "2 Clarendon St, Melbourne", description: "An evening ride on bike paths to Williamstown and Altona. Some cycling on the road on the return.", start_time: "2021-10-01", URL:"https://walkingmaps.com.au/walk/4365")
Category.find_by(name: "Outdoorsy").activities.create(name: "Try Dragon Boat Racing!", address: "912 Collins Street, Docklands VIC", description: "Looking for a new sport? Are you ready to be fun, fit and active? Want to see if you've got what it takes to work hard in a team? This might just be your thing.", start_time: "2021-03-20", URL:"https://yarrariverdragons.com.au/")
Category.find_by(name: "Outdoorsy").activities.create(name: "Kitty Miller Bay", address: "South End of Carpark, Kitty Millers Bay Road, Ventnor VIC 3922", description: "The salty-waters at this 500-metre-long, horseshoe-shaped beach provide good luck and good times to all who enter. Located on Phillip Island, visitors can find solace in the gentle waves, hit the surf further out or have a snorkel among the rocky reefs — with sponge, starfish and other aquatic creatures happily going about their day. If you're especially keen on the snorkelling bit, come by at low tide when the beach reveals a large rock platform that acts as a good jumping off point. For an interesting history lesson, check out the chunk of an old ship, dubbed the Speke Shipwreck, on the shore.", start_time: "2021-03-20", URL:"https://www.visitbasscoast.com.au/kitty-miller-bay-beach")
Category.find_by(name: "Outdoorsy").activities.create(name: "Naked skydiving", address: "1421 Barwon Heads Rd, Connewarre VIC 3227", description: "Skydiving with clothes on is so mainstream.", start_time: "2021-03-30", URL:"https://jointheteem.com/skydiving-videos/the-naked-news-goes-skydiving/")
Category.find_by(name: "Outdoorsy").activities.create(name: "Beach Party!! - MC Shiv", address: "St Kilda", description: "St Kilda beach", start_time: "2021-11-28", URL:"https://fisherbeachparty.com.au/st-kilda/")
Category.find_by(name: "Outdoorsy").activities.create(name: "Amazing Race!", address: "Federation Square", description: "Expirience what it's like to be in the amazing race. Race around Melbourne solving clues and beating challenges.", start_time: "2021-10-01", URL:"https://www.amazingracemelbourne.com.au/")
Category.find_by(name: "Outdoorsy").activities.create(name: "Croajingolong", address: "W Wingan Rd, Wingan River Victoria 3891", description: "They say that good things come to those who wait. And while six hours may seem like a long time, it's well worth the road-trip for the swimming spot of your dreams. Grab a few mates, a tent and get ready to hit the beach. Spread across hundreds of kilometres in Gippsland, the Croajingolong National Park is beautifully wild. Think eucalypt forests leading to long, white sandy beaches. It's truly a secluded paradise and offers crystal clear waters ideal for snorkelling. Get ready to Instagram like crazy, or fully disconnect and make sandcastles on the beach instead.", start_time: "2021-04-01", URL:"https://www.parks.vic.gov.au/places-to-see/parks/croajingolong-national-park")
Category.find_by(name: "Outdoorsy").activities.create(name: "Half Moon Bay", address: "232 Beach Rd, Black Rock Victoria 3193", description: "Throw down your towel and get ready to frolic along this lunar-shaped beach and its luxurious sandy shores. Half Moon Bay is more for floating and bobbing than for surfing or getting dumped by waves. And that's a huge appeal when all you want is a leisurely day by the beach. For the rest of you, take a jaunt around the surrounding cliffs, where gorgeous coastal views await you. Once you're finished, head back to the beach where you can sink your toes in the sand and cool off with a dip. Then grab some fresh fish at one of Black Rock Wharf's seafood restaurants.", start_time: "2021-03-12", URL:"https://www.bayside.vic.gov.au/facilities-venues/half-moon-bay-foreshore")
Category.find_by(name: "Outdoorsy").activities.create(name: "Slumber Safari", address: "K Road, Werribee South VIC 3030", description: "Does a rhino get bed hair? Are giraffes grumpy in the morning? What does a lion eat for breakfast? Spend a night in your safari-styled tent fitted with all the creature comforts at the Werribee Open Range Zoo and find out all of these niggling questions that no amount of Googling can ever answer. Slumber Safari also includes delicious snacks, dinner, a night safari tour, campfire and the complimentary sparking wine. Plus an African-inspired brekkie the next morning on your own private deck.", start_time: "2021-03-12", URL: "https://www.zoo.org.au/werribee/whats-on/animal-encounters/slumber-safari/")

Category.find_by(name: "Outdoorsy").activities.create(name: "Cosy Tents", address: "6 Kanga Road, Yandoit, VIC 3461", description: "Goose down quilt? Check. Bose speakers? Check. Barbecue, esky and communal fire pit for adventurous campfire cooking? Check. Stunning views across Hepburn Shire? Yep — you guessed it — check. Cosy Tents is the perfect weekend getaway to explore the smorgasbord of gourmet food, wineries and award-winning restaurants in the region. Oh, and it's right near the spa capital of Australia. That's pretty handy too. Choose from a wide range of bell tents, all set with ample distance between them, but close enough to create a little glamping community, too.", start_time: "2021-03-12", URL:"https://www.cosytents.com.au/")

# Low-Fi Category
Category.find_by(name: "Low-Fi").activities.create(name: "Books & Wine", address: "111 Carlton St, Carlton", description: "Great wine and a great book is always a recipe for a perfect day", start_time: "2021-03-23")
Category.find_by(name: "Low-Fi").activities.create(name: "Stargazing", address: "Great Otway National Park", description: "Walking, talking and stargazing at Great Otway National Park.", start_time: "2021-03-23")
Category.find_by(name: "Low-Fi").activities.create(name: "Poetry night", address: "359 Little Bourke St, Melbourne", description: "Looking for a place to share and listen to poetry?", start_time: "2021-03-28")
Category.find_by(name: "Low-Fi").activities.create(name: "Sunrise meditation", address: "Wilsons Promontory National Park", description: "Putting your mind at ease followed by a beautiful sunrise is a terrific way to begin your day.", start_time: "2021-03-28")
Category.find_by(name: "Low-Fi").activities.create(name: "Board games night", address: "4/16 Fuller Rd, Ravenhall VIC 3023", description: "Great people and awesome board games. Nostalgia level 99.", start_time: "2021-03-29")
Category.find_by(name: "Low-Fi").activities.create(name: "Hotbox Wednesdays", address: "1201 N La Brea Ave, West Hollywood, CA 90038, United States", description: "Hump days has been replaced with Hotbox Wednesday.", start_time: "2021-03-29")
Category.find_by(name: "Low-Fi").activities.create(name: "Onsen Ma Japanese Bathhouse", address: "12-18 Meyers Place, Melbourne VIC 3000", description: "Wash your worries away at this traditional Japanese bathhouse in the CBD. Onsen Ma is a little slice of heaven where you can soak in private or public baths, or bliss out with a shiatsu massage.", start_time: "2021-03-29")
Category.find_by(name: "Low-Fi").activities.create(name: "Reading Room at the State Library", address: "328 Swanston Street, Melbourne VIC 3000", description: "Flex your brain power under the iconic glass dome of the State Library’s La Trobe Reading Room. A popular tourist attraction, it might not be a cone of silence these days, but it will soothe the soul of anyone feeling studious.", start_time: "2021-03-30")
Category.find_by(name: "Low-Fi").activities.create(name: "Gravity Floatation", address: "559 High Street, Northcote Victoria 3070", description: "Being alone, naked, in darkness and silence, floating in an Epsom Salt bath in an enclosed pod might sound kinda creepy. But you’d be hella surprised how relaxing this meditative experience is.", start_time: "2021-03-30")
Category.find_by(name: "Low-Fi").activities.create(name: " Travelling Samovar Tea House", address: "40 Marine Parade, Abbotsford Victoria 3067", description: "There are few things as relaxing as a warm cup of tea. Travelling Samovar elevates the art of the tea ceremony to the next level, and has a gorgeous leafy courtyard to recline in.", start_time: "2021-03-30")
Category.find_by(name: "Low-Fi").activities.create(name: "Como House & Gardens", address: "Williams Road &, Lechlade Avenue, South Yarra VIC 3141", description: "The gardens at South Yarra’s historic Como House are a gorgeous spot to unwind. Grab a delish hamper from the Stables of Como and enjoy a lazy, weekend picnic. They're also home to the annual Paris to Provence Festival, which takes place every November. Bon appétit.", start_time: "2021-03-31")

# Turnt Category
Category.find_by(name: "Turnt").activities.create(name: "Milk the Cow", address: "323 Lygon Street, Carlton, Victoria, 3053", description: "Not literally... But! You sure can satisfy those late-night cheese cravings at Milk the Cow, a sophisticated wine and cheese bar. This licensed fromagerie boasts a selection of more than 150 artisan cheeses from across the globe as well as seasonal cheeses which are available to enjoy on site, by the gram or in a takeaway Cheesebox.", start_time: "2021-03-31")
Category.find_by(name: "Turnt").activities.create(name: "Pawn & Co.", address: "177 Greville Street, Prahran Victoria, 3181", description: "Everything inside is up for sale so you can spend a little cash on furniture for instance alongside ordering one of the many unique cocktails on offer such as the Gunpowder Iced Tea with rum, chilli-infused peach tea and chocolate! Pawn & Co. is one of those bars that you need to visit whether you’re a local or a visitor…just make sure if you’re travelling you don’t purchase a grand piano…might be a little large for carry-on luggage!", start_time: "2021-03-21")
Category.find_by(name: "Turnt").activities.create(name: "Antique Bar", address: "218 Glen Huntly Road, Elsternwick Victoria, 3185", description: "Feel like an endless supply of wine? Antique Bar has you covered! With a $29 wine buffet every Sunday, you’ll be in for a well-worthy hangover on Monday (and a potential sick day!")
Category.find_by(name: "Turnt").activities.create(name: "George’s Bar", address: "120 Johnston Street, Fitzroy Victoria, 3065", description: "If you’re obsessed with the American sitcom Seinfeld and want anything and everything George Constanza related, then you’ve come to the right place. A welcoming environment and uber cool vibe that will keep you coming back for more. Whether you’re in the mood for a $5 toastie to ago alongside your drink, $2 pretzels or a hump day catch up with a friends in one of their cosy booths, George’s Bar is the place for you.", start_time: "2021-03-21")
Category.find_by(name: "Turnt").activities.create(name: "Berlin Bar", address: "160 Corrs Lane, Melbourne Victoria, 3000", description: "Firstly, you need to ring the doorbell to get in. But once “invited in”, you ‘ll see why Berlin Bar is an old favourite. The venue is split into two sections, East and West – just like Berlin city. Once you’ve decided which side you’re a part of, and think carefully, you can let the fun begin! Order one of Berlin Bar’s quirky cocktails and enjoy it in their cosy 1980’s indoor setting with dim lighting for a glamorous ambiance.", start_time: "2021-03-24")

# Broke-Ass Category
Category.find_by(name: "Broke-Ass").activities.create(name: "Spleen (Bar)", address: "41 Bourke St, Melbourne Victoria 3000", description: "Back in the olden days (that is, pre-2020) Spleen was known to pack out its Monday comedy gigs, with standing space only right to the door. It was a popularity achieved partly due to the great line-ups... and partly because entry was by gold coin donation. These days, of course, there's a set number of tickets and they'll cost you (a still very affordable) $10, but you'll still want to nab your spot early to avoid missing out.", start_time: "2021-03-19")
Category.find_by(name: "Broke-Ass").activities.create(name: "Sample, Samples, Samples", address: "Queen Street, Melbourne Victoria 3000", description: "Did you know that one of the best things to do in Melbourne is also free? Yep, here at Queen Vic Market, you’ll be able to peruse the sheds and spy all the great fruit, veg, meat, dairy and smallgoods. If you’re lucky, there might be a few stalls handing out free samples - stick around the cheese section and you will be rewarded!",start_time: "2021-03-19")
Category.find_by(name: "Broke-Ass").activities.create(name: "Creator's market", address: "Queen Street, Melbourne Victoria 3000", description: "Melbourne is home to many unique designers and independent makers, and one of the best events to discover local talent is at The Creator’s Market. As one of the largest handmade and homemade markets, you’ll find a huge selection of tasty sweets, savoury treats, home wares, emerging fashion and jewellery designers, children’s toys and much more. Specially curated so there are no more than two exhibitors selling similar items, they showcase a diverse range of Melbourne’s best creators.", start_time: "2021-03-23")
Category.find_by(name: "Broke-Ass").activities.create(name: "Readings", address: "309 Lygon Street, Carlton Victoria 3053", description: "It’s not often that you see crowds hanging out at a bookshop at 10pm on a Saturday night, but that’s Readings for you – proof that there’s still a place for great independent bookshops (which don’t frown on people reading a little before they buy, mind you). This landmark bookstore isn’t just famous in Melbourne either. Readings Carlton won international acclaim in 2016 when it was awarded the ‘Bookstore of the Year’ award at the London Book Fair International Excellence Awards.", start_time: "2021-03-25")

# Scraping data tha relates to outdoor related activities.
response = HTTParty.get('https://api.meetup.com/outdoors-adventure/events?page=20')
filepath = File.join(__dir__, 'activities.csv')

CSV.open(filepath, "wb") do |csv|
    csv << %w[name start_time description url latitude longitude status ]
    response.each do |activity|
      csv << [activity["name"], activity["local_time"], activity["description"], activity["link"], activity["venue"]["lat"], activity["venue"]["lon"], activity["status"]]
    end
  end

  csv_options = { headers: :first_row, header_converters: :symbol }
  CSV.foreach(filepath, csv_options) do |row|
    pry.bye
    Category.find_by(name: "Outdoorsy").activities.create!(
        name: row[:name],
        start_time: row[:start_time],
        description: row[:description],
        url: row[:url],
        latitude: row[:latitude].to_f,
        longitude: row[:longitude].to_f,
        status: row[:status]
    )
  end



  # Scraping data tha relates to romance related activities.
  # response = HTTParty.get('https://api.predicthq.com/v1/events/?offset=10&within=100km%40-37.840935%2C144.946457')
  # filepath = File.join(__dir__, 'activities.csv')

  # CSV.open(filepath, "wb") do |csv|
  #     csv << %w[name start_time description url latitude longitude status ]
  #     response.each do |activity|
  #       csv << [activity["name"], activity["local_time"], activity["description"], activity["link"], activity["venue"]["lat"], activity["venue"]["lon"], activity["status"]]
  #     end
  #   end

  #   csv_options = { headers: :first_row, header_converters: :symbol }
  #   CSV.foreach(filepath, csv_options) do |row|
  #     Category.find_by(name: "something_different").activities.create!(
  #         name: row[:name],
  #         start_time: row[:start_time],
  #         description: row[:description],
  #         url: row[:url],
  #         latitude: row[:latitude].to_f,
  #         longitude: row[:longitude].to_f,
  #         status: row[:status]
  #     )
  #   end

