# require 'csv'
require "open-uri"

# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


# Cleans and resets database.
Bookmark.destroy_all
Activity.destroy_all
Category.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all

# Create categories(moods)
Category.create(name: "Sweat")
Category.create(name: "Romance")
Category.create(name: "Outdoorsy")
Category.create(name: "Low-Fi")
Category.create(name: "Turnt")
Category.create(name: "Broke-Ass")

# Create default users
User.create(email: "one@user.com", nickname: "Userone", password: "password")
User.create(email: "two@user.com", nickname: "usertwo", password: "password")


# User.create(email: "sam@user.com", nickname: 'SammyMacDaddy', password: "password")
# User.create(email: "thembi@user.com", nickname: 'Thembizzle', password: "password")
# User.create(email: "shiv@user.com", nickname: "BigShiv", password: "password")
# User.create(email: "fili@user.com", nickname: "FiliSexy", password: "password")
# User.create(email: "chuck-norris@user.com", nickname: "Sensei Chuck", password: "password")

# Create default chatrooms
Chatroom.create(name: "general")


# Sweat Category
Category.find_by(name: "Sweat").activities.create(name: "Yoga at Inspire 9", address: "1/41-43 Stewart St, Richmond VIC 3121", description: "Do yoga with friends!", start_time: "2021-03-12", url:"https://www.inspire9.com/")
Category.find_by(name: "Sweat").activities.create(name: "Workout with The Rock", address: "367 Flinders St, Melbourne VIC 3000", description: "Work on your Gainz or just stare at The Rock all day and be aroused.", start_time: "2021-03-12", url:"https://therockgear.com/workout/")
Category.find_by(name: "Sweat").activities.create(name: "Pole Dancing", address: "6/277 Flinders Ln, Melbourne Victoria 3000", description: "Twerk them calories away!", start_time: "2021-03-12", url:"https://www.thepoleroom.com.au/intropack/?gclid=Cj0KCQiAnKeCBhDPARIsAFDTLTLDOtcPqk_KcXPNl43e2YVKqYIb1jmct5SRYqZXBvl7swQaZ8D9x5AaAp6ZEALw_wcB")
Category.find_by(name: "Sweat").activities.create(name: "Learn how to roundhouse kick", address: "191 Racecourse Rd, Kensington VIC 3031", description: "Come and learn how to roundhouse kick like the undefeated intergalactic champion, Chuck Norris!", start_time: "2021-03-30", url:"https://g.co/kgs/Y7nUJV")
Category.find_by(name: "Sweat").activities.create(name: "Salsa dancing", address: "1/281 Swan St, Richmond VIC 3121", description: "Learn how to move your body like an elegant, majestic swan from the legendary, Damian Lonel.", start_time: "2021-04-12", url:"https://youtu.be/k9qVeZU4msw")
Category.find_by(name: "Sweat").activities.create(name: "Cocktails and Zumba", address: "130 Gladstone St, South Melbourne VIC 3205", description: "Cocktails and Zumba? Yes.", start_time: "2021-04-30", url:"https://youtu.be/gCROJglfRxo")
Category.find_by(name: "Sweat").activities.create(name: "Bodhi & Ride", address: "416-418 Bay Street, Port Melbourne, VIC 3207", description: " This spin class is anything but typical, blending endurance, interval and weight training into a 40-minute clubbing experience where stilettos are replaced by trainers. Sweat it out with rock star instructors under strobe lights with a 3 million dollar sound system blasting the latest club tracks..", start_time: "2021-03-30", url:"https://www.bodhiandride.com.au/")
Category.find_by(name: "Sweat").activities.create(name: "Bey Dance", address: "4-10 Yorkshire Street, Richmond, Victoria 3121", description: "Unleash your inner diva at a dance class dedicated to Beyonce. Bey Dance takes your secret passion for dancing around your room and brings it to the main stage where your Bey Captains are ready to teach you the chorography to hits like Love on Top, Single Ladies and Run the World.", start_time: "2021-04-01", url:"http://www.dancefactory.com.au/")
Category.find_by(name: "Sweat").activities.create(name: "Snowga", address: "16 Schuss St, Falls Creek Victoria 3699", description: "If you’re bored with Bikram and Disco Yoga and don’t mind frost bite then it’s time to visit the slopes and try Snowga. Greet the day in the downward dog position at dawn and become one with the profound silence of the mountains. Stretch out your hamstrings, quadriceps and shoulders before you carve up the mountain with a day of skiing, followed by a restorative yoga session at the end of the day. !", start_time: "2021-04-01", url:"https://www.theyogavine.com.au/")
Category.find_by(name: "Sweat").activities.create(name: "Sky High Yoga", address: "The District Docklands, 101 Waterfront Way, Docklands VIC 3008", description: "Connect again with your inner guiding star with a Slow Flow Yoga practice on the Melbourne Star. Meditate in peace above the world in the quiet of fully enclosed glass cabins, temperature-controlled to create the perfect environment.Stretch and relax with popular and traditional yoga postures, then return to earth for a drink of your choice from Boost Juice.", start_time: "2021-05-01", url:"https://melbournestar.com/experiences/yoga-sky/")
Category.find_by(name: "Sweat").activities.create(name: "F* It", address: "544 Mt Alexander Rd, Ascot Vale, Victoria 3032", description: " Thumping beats first thing in the morning. The kind that makes your drink bottle reverb like Jurassic Park. It means lasers and coloured lighting that changes based on your instructor’s mood. It means LED-lined mirrors and ‘murder black’ treadmills with built-in touchscreen Android systems. It’s kind of like that underground rave scene in the Matrix, only everyone’s incredibly buff.", start_time: "2021-05-01", url:"https://fk-it.com.au/" )

# Romance Category
Category.find_by(name: "Romance").activities.create(name: "Cute dinner with Thembi", address: "4/3 Murphy St, South Yarra VIC 3141", description: "Have a cute dinner with Thembi (pop the question at this romantic venue)", start_time: "2021-03-12", url:"https://www.youtube.com/playlist?list=UUZPQfUQNPZojG8DCdg8Mh9Q" )
Category.find_by(name: "Romance").activities.create(name: "Meet the love guru", address: "1/41-43 Stewart St, Richmond VIC 3121", description: "The love guru, Akash. Will be giving a lecture on how to find love.", start_time: "2021-03-12", url:"https://akash7.netlify.app/")
Category.find_by(name: "Romance").activities.create(name: "Married at first sight experience", address: "234 Elgar Rd, Box Hill South VIC 3128", description: "Show up, get married and see how you go.", start_time: "2021-06-07", url:"https://9now.nine.com.au/married-at-first-sight")
Category.find_by(name: "Romance").activities.create(name: "Couples Olympics", address: "Melbourne Cricket Ground", description: "Bring your self and your partner and achieve couple greatness.", start_time: "2021-09-01", url:"https://www.pinterest.com.au/jessirose1/couples-olympics/")
Category.find_by(name: "Romance").activities.create(name: "#InstaWorthy", address: "525 Collins St, Melbourne VIC", description: "Let us take you to all the most romantic locations in Melbourne so you can take memorable snaps with your partner", start_time: "2021-06-01", url:"https://www.instagram.com/explore/tags/instaworthy/?hl=en")
Category.find_by(name: "Romance").activities.create(name: "Netflix and chill.. on a roof", address: "252 Swanston St, Melbourne VIC 3000", description: "Take your Netflix and chill game to the next level, literally. Enjoy the outdoor cinema on top or spend the night viewing the city lights.", start_time: "2021-06-01", url:"https://g.co/kgs/EjNxi5")
Category.find_by(name: "Romance").activities.create(name: "The Colonial Tram Car Restaurant", address: "125 Normanby Road, South Melbourne, Victoria, 3205", description: "The Colonial Tramcar Restaurant is an elegant dining experience unique to Melbourne. Behold the sights as you comfortably cruise around the city while enjoying a seasonal menu and quality Australian wines from the all-inclusive bar. Choose between the luncheon four-course meal, early dinner three-course meal and late dinner five-course meal as well as pre-theatre dining.", start_time: "2021-04-01", url:"https://tramrestaurant.com.au/")
Category.find_by(name: "Romance").activities.create(name: "Dinner in the Sky", address: "26 Observatory Rd, Mount Dandenong Victoria 3767", description: "Hoisted 50 metres into the air, Dinner in the Sky is the most suspenseful gourmet experience in the world. The dangling dinner table seats 22 people along with the chef, sommelier and waiting team, who stand in the centre ensuring your experience is of the highest quality", start_time: "2021-03-19", url:"https://www.skyhighmtdandenong.com.au/dining/")
Category.find_by(name: "Romance").activities.create(name: "The Salsa Foundation", address: "600 Little Collins Street, Melbourne, Victoria, 3000", description: "Leave your ego at the door, and hit the dance floor to really impress your date at a salsa class. It doesn’t matter if you’ve never danced before or don’t know you cha-cha from your foxtrot, the Salsa Foundation welcomes beginners and runs free classes every Wednesday and Thursday where even those with two left feet can learn a move or two.", start_time: "2021-03-12", url:"https://www.thesalsafoundation.com.au/")
Category.find_by(name: "Romance").activities.create(name: "Underground Cinema", address: "Melbourne, Victoria, 3000", description: "Keep the mystery alive by taking your date to Underground Cinema, a spot that aims to create immersive worlds that merge traditional forms of storytelling and cinema. The themed events encourage people to deck up in fancy dress and show up at an undisclosed location, to watch a mystery movie that is only revealed when the film starts rolling. From a warehouse to a forgotten ballroom, you never know where the Underground Cinema will appear.", start_time: "2021-03-12", url:"https://www.undergroundcinema.com.au/")
Category.find_by(name: "Romance").activities.create(name: "Melbourne Planetarium", address: "2 Booker Street, Melbourne Victoria 3015", description: "For an out-of-this-world date, visit the Melbourne Planetarium where you can recline under the stars and watch an awe-inspiring cosmic presentation across the 16m (53ft) domed ceiling. Contemplate the mysteries of the universe together as you watch a dazzling audio and visual display followed by a live presentation of the night sky, guaranteed to make your affections skyrocket.", start_time: "2021-03-12", url:"https://museumsvictoria.com.au/scienceworks/whats-on/planetarium-nights/")
Category.find_by(name: "Romance").activities.create(name: "Grape stomping at Noisy Ritual", address: "249 Lygon Street, Brunswick East, Victoria 3057", description: "Melbourne’s first urban winery Noisy Ritual allows visitors the opportunity to make their own wine. Get your hands and feet dirty in a grape-to-glass experience which not only demystifies the process of winemaking, but also makes for a memorable and hilarious date. Noisy Ritual also offers wine-making workshops and barrel tastings.", start_time: "2021-03-12", url:"https://noisyritual.com.au/")
Category.find_by(name: "Romance").activities.create(name: "Punting on the lake", address: "Ornamental Lake, Melbourne, Victoria 3004", description: "Enjoy a romantic punt ride through Melbourne’s iconic Royal Botanic Gardens and see the picturesque gardens from a whole new perspective. Sitting side by side, you’ll glide through the shallow waters of the Ornamental Lake, watching for adorable turtles. Tours last 30 minutes and each punt can seat up to eight people.", start_time: "2021-03-12", url:"https://puntingonthelake.com.au/")
Category.find_by(name: "Romance").activities.create(name: "Old Melbourne Gaol Night Tours", address: "377 Russell Street, Melbourne, Victoria 3000", description: "The spine-tingling range of night tours run by the Old Melbourne Gaol includes a Night in the Watch House, the Hangman’s Night Tour and the ‘Ghost? What Ghost!’ tour. Cast in candlelight, these haunting tours provide the perfect opportunity to hold tightly onto one another as you listen to frightful stories of the prison and executions, including that of Ned Kelly.", start_time: "2021-04-12", url:"https://www.oldmelbournegaol.com.au/hangmans-night-tour/")
Category.find_by(name: "Romance").activities.create(name: "Zoo Twilights", address: "Elliott Avenue, Parkville, Victoria 3052", description: "A longstanding summer favourite, Zoo Twilights is a unique picnic and concert experience created for support against wildlife extinction. Set against a backdrop of growling lions and gleeful birds, Melbourne Zoo hosts 17 concerts over 17 nights with a lineup including local and international acts. Gates open at 5.30pm, allowing you to roam through the zoo before the concert starts.", start_time: "2021-03-12", url:"https://zootwilights.org.au/")
Category.find_by(name: "Romance").activities.create(name: "Glow Golf", address: "Shop 35 Star Crescent, Docklands, Victoria, 3008", description: "Show off your golf skills in the dark at the smallest yet grooviest mini golf course in Australia, featuring 10 holes under UV lighting. Putt through Australia’s iconic attractions, including the Great Barrier Reef and the Outback with glow-in-the-dark clubs and balls. Remember to wear your best fluoro or bright whites for maximum effect.", start_time: "2021-03-12", url:"http://www.glowgolf.com.au/")


# Outdoorsy Category
Category.find_by(name: "Outdoorsy").activities.create(name: "Walking at the Dandenongs", address: "School Rd, Tremont VIC 3786", description: "Go for a walk through the bush!", start_time: "2021-03-12", url:"https://visitdandenongranges.com.au/mount-dandenong")
Category.find_by(name: "Outdoorsy").activities.create(name: "Tour d'Altona", address: "2 Clarendon St, Melbourne", description: "An evening ride on bike paths to Williamstown and Altona. Some cycling on the road on the return.", start_time: "2021-10-01", url:"https://walkingmaps.com.au/walk/4365")
Category.find_by(name: "Outdoorsy").activities.create(name: "Try Dragon Boat Racing!", address: "912 Collins Street, Docklands VIC", description: "Looking for a new sport? Are you ready to be fun, fit and active? Want to see if you've got what it takes to work hard in a team? This might just be your thing.", start_time: "2021-03-20", url:"https://yarrariverdragons.com.au/")
Category.find_by(name: "Outdoorsy").activities.create(name: "Kitty Miller Bay", address: "South End of Carpark, Kitty Millers Bay Road, Ventnor VIC 3922", description: "The salty-waters at this 500-metre-long, horseshoe-shaped beach provide good luck and good times to all who enter. Located on Phillip Island, visitors can find solace in the gentle waves, hit the surf further out or have a snorkel among the rocky reefs — with sponge, starfish and other aquatic creatures happily going about their day. If you're especially keen on the snorkelling bit, come by at low tide when the beach reveals a large rock platform that acts as a good jumping off point. For an interesting history lesson, check out the chunk of an old ship, dubbed the Speke Shipwreck, on the shore.", start_time: "2021-03-20", url:"https://www.visitbasscoast.com.au/kitty-miller-bay-beach")
Category.find_by(name: "Outdoorsy").activities.create(name: "Naked skydiving", address: "1421 Barwon Heads Rd, Connewarre VIC 3227", description: "Skydiving with clothes on is so mainstream.", start_time: "2021-03-30", url:"https://jointheteem.com/skydiving-videos/the-naked-news-goes-skydiving/")
Category.find_by(name: "Outdoorsy").activities.create(name: "Beach Party!! - MC Shiv", address: "St Kilda", description: "St Kilda beach", start_time: "2021-11-28", url:"https://fisherbeachparty.com.au/st-kilda/")
Category.find_by(name: "Outdoorsy").activities.create(name: "Amazing Race!", address: "Federation Square", description: "Expirience what it's like to be in the amazing race. Race around Melbourne solving clues and beating challenges.", start_time: "2021-10-01", url:"https://www.amazingracemelbourne.com.au/")
Category.find_by(name: "Outdoorsy").activities.create(name: "Croajingolong", address: "W Wingan Rd, Wingan River Victoria 3891", description: "They say that good things come to those who wait. And while six hours may seem like a long time, it's well worth the road-trip for the swimming spot of your dreams. Grab a few mates, a tent and get ready to hit the beach. Spread across hundreds of kilometres in Gippsland, the Croajingolong National Park is beautifully wild. Think eucalypt forests leading to long, white sandy beaches. It's truly a secluded paradise and offers crystal clear waters ideal for snorkelling. Get ready to Instagram like crazy, or fully disconnect and make sandcastles on the beach instead.", start_time: "2021-04-01", url:"https://www.parks.vic.gov.au/places-to-see/parks/croajingolong-national-park")
Category.find_by(name: "Outdoorsy").activities.create(name: "Half Moon Bay", address: "232 Beach Rd, Black Rock Victoria 3193", description: "Throw down your towel and get ready to frolic along this lunar-shaped beach and its luxurious sandy shores. Half Moon Bay is more for floating and bobbing than for surfing or getting dumped by waves. And that's a huge appeal when all you want is a leisurely day by the beach. For the rest of you, take a jaunt around the surrounding cliffs, where gorgeous coastal views await you. Once you're finished, head back to the beach where you can sink your toes in the sand and cool off with a dip. Then grab some fresh fish at one of Black Rock Wharf's seafood restaurants.", start_time: "2021-03-12", url:"https://www.bayside.vic.gov.au/facilities-venues/half-moon-bay-foreshore")
Category.find_by(name: "Outdoorsy").activities.create(name: "Slumber Safari", address: "K Road, Werribee South VIC 3030", description: "Does a rhino get bed hair? Are giraffes grumpy in the morning? What does a lion eat for breakfast? Spend a night in your safari-styled tent fitted with all the creature comforts at the Werribee Open Range Zoo and find out all of these niggling questions that no amount of Googling can ever answer. Slumber Safari also includes delicious snacks, dinner, a night safari tour, campfire and the complimentary sparking wine. Plus an African-inspired brekkie the next morning on your own private deck.", start_time: "2021-03-12", url: "https://www.zoo.org.au/werribee/whats-on/animal-encounters/slumber-safari/")
Category.find_by(name: "Outdoorsy").activities.create(name: "Cosy Tents", address: "6 Kanga Road, Yandoit, VIC 3461", description: "Goose down quilt? Check. Bose speakers? Check. Barbecue, esky and communal fire pit for adventurous campfire cooking? Check. Stunning views across Hepburn Shire? Yep — you guessed it — check. Cosy Tents is the perfect weekend getaway to explore the smorgasbord of gourmet food, wineries and award-winning restaurants in the region. Oh, and it's right near the spa capital of Australia. That's pretty handy too. Choose from a wide range of bell tents, all set with ample distance between them, but close enough to create a little glamping community, too.", start_time: "2021-03-12", url:"https://www.cosytents.com.au/")

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
Category.find_by(name: "Turnt").activities.create(name: "Antique Bar", address: "218 Glen Huntly Road, Elsternwick Victoria, 3185", description: "Feel like an endless supply of wine? Antique Bar has you covered! With a $29 wine buffet every Sunday, you’ll be in for a well-worthy hangover on Monday (and a potential sick day!", start_time: "2021-03-31")
Category.find_by(name: "Turnt").activities.create(name: "George’s Bar", address: "120 Johnston Street, Fitzroy Victoria, 3065", description: "If you’re obsessed with the American sitcom Seinfeld and want anything and everything George Constanza related, then you’ve come to the right place. A welcoming environment and uber cool vibe that will keep you coming back for more. Whether you’re in the mood for a $5 toastie to ago alongside your drink, $2 pretzels or a hump day catch up with a friends in one of their cosy booths, George’s Bar is the place for you.", start_time: "2021-03-21")
Category.find_by(name: "Turnt").activities.create(name: "Berlin Bar", address: "160 Corrs Lane, Melbourne Victoria, 3000", description: "Firstly, you need to ring the doorbell to get in. But once “invited in”, you ‘ll see why Berlin Bar is an old favourite. The venue is split into two sections, East and West – just like Berlin city. Once you’ve decided which side you’re a part of, and think carefully, you can let the fun begin! Order one of Berlin Bar’s quirky cocktails and enjoy it in their cosy 1980’s indoor setting with dim lighting for a glamorous ambiance.", start_time: "2021-03-24")
Category.find_by(name: "Turnt").activities.create(name: "Eau De Vie", address: "1 Malthouse Lane, Melbourne Victoria 3000", description: "A bar straight out of 1920’s prohibition America, from the moment you walk in you are taken back to a much forgotten era. Once inside you can sit up at the bar, at one of our shared high tables, our low banquette and coffee table seating, or a more intimate and private booth.", start_time: "2021-03-19")
Category.find_by(name: "Turnt").activities.create(name: "Good Heavens Rooftop Bar", address: "Level 2, 79 Bourke Street, Melbourne, Victoria 3000", description: "A rooftop bar on Bourke St pouring 80s inspired cocktails, craft beers and an all-Australian wine list. Enjoy the outdoor bar with one of the best views of Melbourne’s CBD.", start_time: "2021-03-19")
Category.find_by(name: "Turnt").activities.create(name: "Heroes and Karaoke Bar", address: "188 Bourke Street, Melbourne Victoria 3000", description: "A night at Heroes begins on Bourke Street, in the ice-cream shop Nitro Lab. At the back of the store is an elevator that takes you from cool, liquid-nitrogen-produced fog to the rich charcoal smoke of Heroes, the Southeast Asian-inspired bar and barbeque spot from the team behind Fancy Hank’s.", start_time: "2021-03-19")
Category.find_by(name: "Turnt").activities.create(name: "Hogwash Hoedown", address: "1/79 Bourke Street, Melbourne Victoria 3000", description: "Fancy Hanks will be launching a new Saturday night event… the Hogwash Hoedown. Making the most of Saturday nights we’re bringing you some prime Melbourne DJ’s kicking off at 11pm until closing at 3am.  So stick around after your dinner or join us for a night cap as we launch a new speakeasy drinking venue in the top end of the CBD. perfect place to sit and enjoy your whiskey or get up and share your best hoedown moves if the beats take you, as we serve you all the classics into the early morning.", start_time: "2021-04-17")
Category.find_by(name: "Turnt").activities.create(name: "Aussie Brewery Tours", address: " Melbourne Victoria 3000", description: "At Aussie Brewery Tours, we spend our lives visiting the best breweries, distilleries, cideries, wineries, food makers and creators we can find. When we aren't eating and drinking Melbourne's best activity providers are keeping us entertained. We specialise in all things boozy and fun and love it when there are plenty of drinks, amazing food, singing, laughing, dancing and good times. Life is here to be celebrated, let's go", start_time: "2021-03-19")
Category.find_by(name: "Turnt").activities.create(name: "Siglo", address: "2/161 Spring Street Melbourne Victoria 3000", description: "Rising from wraparound timber stairs, Siglo Bar is a stunning cube of industrial steel, glass and neon, opening to striking city views spanning the floodlit columned façade of Parliament, the spire of St Patrick’s Cathedral and the muralled brickwork and domes of the Princess Theatre.", start_time: "2021-03-19")


# Broke-Ass Category
Category.find_by(name: "Broke-Ass").activities.create(name: "Spleen (Bar)", address: "41 Bourke St, Melbourne Victoria 3000", description: "Back in the olden days (that is, pre-2020) Spleen was known to pack out its Monday comedy gigs, with standing space only right to the door. It was a popularity achieved partly due to the great line-ups... and partly because entry was by gold coin donation. These days, of course, there's a set number of tickets and they'll cost you (a still very affordable) $10, but you'll still want to nab your spot early to avoid missing out.", start_time: "2021-03-19")
Category.find_by(name: "Broke-Ass").activities.create(name: "Sample, Samples, Samples", address: "Queen Street, Melbourne Victoria 3000", description: "Did you know that one of the best things to do in Melbourne is also free? Yep, here at Queen Vic Market, you’ll be able to peruse the sheds and spy all the great fruit, veg, meat, dairy and smallgoods. If you’re lucky, there might be a few stalls handing out free samples - stick around the cheese section and you will be rewarded!",start_time: "2021-03-19")
Category.find_by(name: "Broke-Ass").activities.create(name: "Creator's market", address: "Queen Street, Melbourne Victoria 3000", description: "Melbourne is home to many unique designers and independent makers, and one of the best events to discover local talent is at The Creator’s Market. As one of the largest handmade and homemade markets, you’ll find a huge selection of tasty sweets, savoury treats, home wares, emerging fashion and jewellery designers, children’s toys and much more. Specially curated so there are no more than two exhibitors selling similar items, they showcase a diverse range of Melbourne’s best creators.", start_time: "2021-03-23")
Category.find_by(name: "Broke-Ass").activities.create(name: "Readings", address: "309 Lygon Street, Carlton Victoria 3053", description: "It’s not often that you see crowds hanging out at a bookshop at 10pm on a Saturday night, but that’s Readings for you – proof that there’s still a place for great independent bookshops (which don’t frown on people reading a little before they buy, mind you). This landmark bookstore isn’t just famous in Melbourne either. Readings Carlton won international acclaim in 2016 when it was awarded the ‘Bookstore of the Year’ award at the London Book Fair International Excellence Awards.", start_time: "2021-03-25")
Category.find_by(name: "Broke-Ass").activities.create(name: "Arts Centre Melbourne Sunday Market", address: "100 Saint Kilda Road Melbourne Victoria 3004", description: "Stallholders at Arts Centre Melbourne's Sunday Market are selected based on the originality and quality of their wares – so there’s plenty to capture your imagination, such as scarves, jewellery, photography, accessories, clothing, gourmet goodies and more. You’ll be sure to find a unique gift or a treat for yourself, meet the makers and artists, and learn all about their products and what inspires their work. ", start_time: "2021-03-18")
Category.find_by(name: "Broke-Ass").activities.create(name: "Free Movies at Fed Square", address: "Swanston Street & Flinders Steet, Melbourne Victoria 3000", description: "The big screen at Fed Square is lighting up this summer with a stack of classic films, and they're all completely free. It’s all happening at Fed Oasis. There’ll be comfy seating, shaded areas, environmentally-friendly recycled astroturf and in-square food and drink delivery. Order from one of the square's restaurants and cafes and you’ve got a gold-class cinema experience. ", start_time: "2021-03-18")
Category.find_by(name: "Broke-Ass").activities.create(name: "Makers Market at The District", address: "Swanston Street & Flinders Steet, Melbourne Victoria 3000", description: "Enjoy live entertainment and creative, colourful market stalls showcasing art, craft, jewellery, fashion, homewares, gifts and delicious homemade and homegrown produce. Bring your furry friends along as The District is a pet-friendly precinct and you'll find stalls selling doggie treats, accessories and outfits. Grab a coffee and take a stroll through the open-air laneways and enjoy a spot of shopping.", start_time: "2021-03-18")
Category.find_by(name: "Broke-Ass").activities.create(name: "Melbourne Street Eatz", address: "1 Convention Centre Place, South Wharf Victoria 3006", description: "Melbourne’s favourite food truck event is back. With weekly rotating trucks, drinks packages, games, live music and events, Melbourne Street Eatz is the ultimate day and night out. Work up an appetite - and a thirst - gather your mates and head down South Wharf. See you by the river.", start_time: "2021-03-18")
Category.find_by(name: "Broke-Ass").activities.create(name: "Worlds Immersive Learning Lab", address: "11 Nicholson Street Carlton Victoria 3053", description: "Worlds Immersive is a 5-minute cinematic journey from the origin of the universe, through the building blocks of nature, to explore the patterns and connections that bind us and the natural world together. As forces of nature are manipulated, naturally occurring patterns reveal the underlying laws of the universe and the connection between all things. ", start_time: "2021-03-18")
Category.find_by(name: "Broke-Ass").activities.create(name: "Not-So Silent Outdoor Cinema", address: "Swanston Street & Flinders Street Melbourne Victoria 3000", description: "A series of striking silent films curated by ACMI, Australia's national museum of screen culture, will take over Fed Square's outdoor screen once a month until April, with live scores played by local musicians. Head down to meet Sherlock Jr, be mesmerised by Metropolis, and pretend to understand Dr Plonk. Each session is completely free to attend, kicking off with The Adventures of Prince Achmed with Phillip Johnston. ", start_time: "2021-03-18")
Category.find_by(name: "Broke-Ass").activities.create(name: "The Story of the Moving Image", address: "Flinders Street Melbourne Victoria 3000", description: "Discover how inventors, innovators and artists at the turn of the 20th century wielded light, split time and captured motion, heralding a technological revolution that continues today. Featuring ancient shadow puppets, Victorian-era magic lanterns, original cameras, iconic costumes, movie sets, sketches, clips and contemporary art, The Story of the Moving Image traverses time, countries and cultures in a mesmerising exploration of an art form that changed the world and illuminated our collective humanity. ", start_time: "2021-03-18")

# Assigning a user to each activity
Activity.all.each do |activity|
  if activity.id.odd?
    activity.user = User.find_by(email: "one@user.com")
    activity.save
  else
    activity.user = User.find_by(email: "two@user.com")
    activity.save
  end
end

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

sweat_url = [
  "https://images.pexels.com/photos/6089998/pexels-photo-6089998.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  "https://images.pexels.com/photos/6089998/pexels-photo-6089998.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  "https://images.pexels.com/photos/6089998/pexels-photo-6089998.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  "https://images.pexels.com/photos/6089998/pexels-photo-6089998.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  "https://images.pexels.com/photos/6089998/pexels-photo-6089998.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  "https://images.pexels.com/photos/6089998/pexels-photo-6089998.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  "https://images.pexels.com/photos/6089998/pexels-photo-6089998.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  "https://images.pexels.com/photos/6089998/pexels-photo-6089998.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  "https://images.pexels.com/photos/6089998/pexels-photo-6089998.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  "https://images.pexels.com/photos/6089998/pexels-photo-6089998.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  "https://images.pexels.com/photos/6089998/pexels-photo-6089998.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"
]

romance_url = [
  "https://mir-s3-cdn-cf.behance.net/user/276/43d12a484375211.5e82cb9aa97e0.jpg",
  "https://avatars0.githubusercontent.com/u/18610657",
  "https://images.unsplash.com/photo-1609150883040-cfd45714ce10?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80",
  "https://c.files.bbci.co.uk/C05F/production/_91374294_kennytrottmedals.jpg",
  "https://images.unsplash.com/photo-1516251193007-45ef944ab0c6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1574375927938-d5a98e8ffe85?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80",
  "https://tramrestaurant.com.au/wp-content/uploads/2016/05/TCR-HERO2-WEB.jpg",
  "https://cdn.theculturetrip.com/wp-content/uploads/2016/01/TWOskyhighmtdandenong.jpg",
  "https://images.unsplash.com/photo-1504609813442-a8924e83f76e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1478720568477-152d9b164e26?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1534294228306-bd54eb9a7ba8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1423483641154-5411ec9c0ddf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1524312313182-97977efa82a6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1610520342147-1c2208882eab?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80",
  "https://images.unsplash.com/photo-1535679706075-20c8cf734c95?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1025&q=80",
  "https://images.unsplash.com/photo-1572037958571-83764a7e4f9e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80"
]

turnt_url = [
  "https://images.unsplash.com/photo-1551790629-9d5c2d781d8b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1399&q=80",
  "https://images.unsplash.com/photo-1588324277032-12be8278042c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1543007630-9710e4a00a20?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80",
  "https://cdn.concreteplayground.com/content/uploads/2017/06/The-George-Collins-Earl-Carter-1440x1440.jpeg",
  "https://images.unsplash.com/photo-1612127265620-72d07b96558f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=712&q=80",
  "https://www.hiddencitysecrets.com.au/wp-content/uploads/2019/10/eau-de-vie-melbourne-bars-CBD-bar-top-best-good-new-hidden-rooftop-laneway-1.jpg",
  "https://images.pexels.com/photos/372959/pexels-photo-372959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "https://images.pexels.com/photos/4457039/pexels-photo-4457039.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "https://images.pexels.com/photos/341858/pexels-photo-341858.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "https://images.pexels.com/photos/159291/beer-machine-alcohol-brewery-159291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  "https://vinesoftheyarravalley.com.au/wp-content/uploads/2019/12/cigar-bar-bucks-party.jpg",
]

outdoorsy_url = [
  "https://images.unsplash.com/photo-1607304664767-33f6a01ef9b4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/flagged/photo-1593971784349-9681f0662bc6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80",
  "https://images.unsplash.com/photo-1591793923243-5000761483c8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1596398235916-3a8f3717dfd0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=890&q=80",
  "https://images.unsplash.com/photo-1499384048662-8f714ec1420d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1355&q=80",
  "https://images.unsplash.com/photo-1611244806964-91d204d4a2a7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1522866348293-55be2c6caa1f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1533757879476-8f4a3cb1ae4b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80",
  "https://images.unsplash.com/photo-1536598271160-65bd0d8380bd?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1268&q=80",
  "https://images.unsplash.com/photo-1535082623926-b39352a03fb7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1368&q=80",
  "https://images.unsplash.com/photo-1508974462591-3c124867fdf8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1352&q=80"
  "https://images.pexels.com/photos/6173860/pexels-photo-6173860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
]

lowfi_url = [
  "https://images.unsplash.com/photo-1610359247414-83b06e486f86?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
  "https://images.unsplash.com/photo-1527871899604-f1425bcce779?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1533271802434-53997a5f9e6c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=431&q=80",
  "https://images.unsplash.com/photo-1606167668584-78701c57f13d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1559596116-5f4c539c1b24?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
  "https://images.unsplash.com/photo-1534247555660-d4af46712d27?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=378&q=80",
  "https://images.unsplash.com/photo-1572099317626-344a00980345?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=801&q=80",
  "https://images.unsplash.com/photo-1605158743762-f887b36eef11?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=584&q=80",
  "https://images.unsplash.com/photo-1517584640132-9379fc085be0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80",
  "https://www.nationaltrust.org.au/wp-content/uploads/2018/01/Como_LowRes_JPEG_22-1200x616.jpg"
]

brokeass_url = [
  "https://www.hiddencitysecrets.com.au/wp-content/uploads/2018/08/Spleen-Bar-cbd-city-bars-Melbourne-hidden-laneway-cool-grungy-dive-cocktail-beer-small-intimate-drinks-after-work-live-music-001.jpg",
  "https://images.unsplash.com/photo-1580998577850-cfcbed268932?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1508997449629-303059a039c0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80",
  "https://i.guim.co.uk/img/media/f1d4257d99b45600cd9229f22e6c460c0ac1240b/0_30_1000_600/master/1000.jpg?width=700&quality=85&auto=format&fit=max&s=6d48517af75e4e54703cb81d6b372868",
  "https://whatson.melbourne.vic.gov.au/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaEpJaWxoTkRBelptRTVZUzB6WVdJMkxUUTVORFl0T0RVNFppMWhNR00wT1Rrd1pqRmlaVFFHT2daRlZBPT0iLCJleHAiOm51bGwsInB1ciI6ImJsb2JfaWQifX0=--e244d98d8836660fda4cf65e6ab7425285668ff7/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VY21WemFYcGxYM1J2WDJ4cGJXbDBXd2RwQXE0Q2FRTE1BUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--6b649797a60ed07e66abb743103d0e385829f44a/048d8863-572c-4b79-a252-2c4f074823df.jpg",
  "https://images.unsplash.com/photo-1580688027085-8220709e3d84?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
  "https://whatson.melbourne.vic.gov.au/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaEpJaWt6WTJJNE5USXhOeTA1T1ROa0xUUmlZMlV0T0dZMU55MWxPRE5sT0dFMU1qZGlaREVHT2daRlZBPT0iLCJleHAiOm51bGwsInB1ciI6ImJsb2JfaWQifX0=--53e1a5e96e1877b5285f40f98c8523c5b4699884/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VY21WemFYcGxYM1J2WDJ4cGJXbDBXd2RwQXE0Q2FRTE1BUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--6b649797a60ed07e66abb743103d0e385829f44a/65d49ad5-e960-448f-a25f-293ab4754a8a.jpg",
  "https://whatson.melbourne.vic.gov.au/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaEpJaWxsTTJNME1UTTFaaTAxTkdFM0xUUmxZell0T0dWa09TMWtNV1V6TnpCbFl6TXpNbUVHT2daRlZBPT0iLCJleHAiOm51bGwsInB1ciI6ImJsb2JfaWQifX0=--9e3f6a5c3e3f37e83a64dda67a62739a69e353cd/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VY21WemFYcGxYM1J2WDJ4cGJXbDBXd2RwQXE0Q2FRTE1BUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--6b649797a60ed07e66abb743103d0e385829f44a/a4833389-0c1a-4dec-b8ac-e16665fbd3b1.jpg",
  "https://whatson.melbourne.vic.gov.au/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaEpJaWxrT1RVMlptVTRaaTFpWmpCbExUUTFNV1l0WWpsaU1pMWtZemhoWlRKaFl6WXpaakFHT2daRlZBPT0iLCJleHAiOm51bGwsInB1ciI6ImJsb2JfaWQifX0=--dd1b119c55d6a1ba08f00e7eb50330fc9811e1cd/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VY21WemFYcGxYM1J2WDJ4cGJXbDBXd2RwQXE0Q2FRTE1BUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--6b649797a60ed07e66abb743103d0e385829f44a/808a905b-8adf-4b04-a419-9569789df3db.jpg",
  "https://whatson.melbourne.vic.gov.au/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaEpJaWswTTJZeVlURTFNQzAyWldKa0xUUTNOamN0WVRjMU1pMHdNMlUyWmpNek9XRXpNVElHT2daRlZBPT0iLCJleHAiOm51bGwsInB1ciI6ImJsb2JfaWQifX0=--63d2d90f24ad43435079cd79ee72b233d2c9f2db/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VY21WemFYcGxYM1J2WDJ4cGJXbDBXd2RwQXE0Q2FRTE1BUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--6b649797a60ed07e66abb743103d0e385829f44a/a4aa0ff8-e18c-4218-beba-eb729c118ac9.jpg",
  "https://whatson.melbourne.vic.gov.au/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaEpJaWt5T1RReU9UWTJPQzFrWkRKaExUUTFOVEV0WVRObFl5MHdaakppWlRoak1HTXpNRGdHT2daRlZBPT0iLCJleHAiOm51bGwsInB1ciI6ImJsb2JfaWQifX0=--adb312bf30628215590d97bd1d3b44dbf6c09db4/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VY21WemFYcGxYM1J2WDJ4cGJXbDBXd2RwQXE0Q2FRTE1BUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--6b649797a60ed07e66abb743103d0e385829f44a/85071c88-67d2-43b8-8a15-50626faf0a25.jpg"
]


i = 0
Category.find_by(name: "Sweat").activities.each do |activity|
  file = URI.open(sweat_url[i])
  activity.cover_photo.attach(io: file, filename: "#{activity.name.downcase.gsub(' ', '_')}.jpg", content_type: 'image/jpg')
  i += 1
end

i = 0
Category.find_by(name: "Romance").activities.each do |activity|
  file = URI.open(romance_url[i])
  activity.cover_photo.attach(io: file, filename: "#{activity.name.downcase.gsub(' ', '_')}.jpg", content_type: 'image/jpg')
  i += 1
end

i = 0
Category.find_by(name: "Turnt").activities.each do |activity|
  file = URI.open(turnt_url[i])
  activity.cover_photo.attach(io: file, filename: "#{activity.name.downcase.gsub(' ', '_')}.jpg", content_type: 'image/jpg')
  i += 1
end

i = 0
Category.find_by(name: "Outdoorsy").activities.each do |activity|
  file = URI.open(outdoorsy_url[i])
  activity.cover_photo.attach(io: file, filename: "#{activity.name.downcase.gsub(' ', '_')}.jpg", content_type: 'image/jpg')
  i += 1
end

i = 0
Category.find_by(name: "Lo-Fi").activities.each do |activity|
  file = URI.open(lowfi_url[i])
  activity.cover_photo.attach(io: file, filename: "#{activity.name.downcase.gsub(' ', '_')}.jpg", content_type: 'image/jpg')
  i += 1
end

i = 0
Category.find_by(name: "Broke-Ass").activities.each do |activity|
  file = URI.open(brokeass_url[i])
  activity.cover_photo.attach(io: file, filename: "#{activity.name.downcase.gsub(' ', '_')}.jpg", content_type: 'image/jpg')
  i += 1
end


file = URI.open("https://images.unsplash.com/photo-1544622428-56b8d9eed7db?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80")
Category.find_by(name: "Romance").activities.find_by(name: "Cute dinner with Thembi").photos.attach(io: file, filename: "tajmahal1.jpg", content_type: 'image/jpg')

file = URI.open("https://images.unsplash.com/photo-1575489181784-a99aa58e4bb5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2791&q=80")
Category.find_by(name: "Romance").activities.find_by(name: "Cute dinner with Thembi").photos.attach(io: file, filename: "tajmahal2.jpg", content_type: 'image/jpg')

file = URI.open("https://images.unsplash.com/photo-1524491887412-14c265900364?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1780&q=80")
Category.find_by(name: "Romance").activities.find_by(name: "Cute dinner with Thembi").photos.attach(io: file, filename: "tajmahal3.jpg", content_type: 'image/jpg')

file = URI.open("https://images.unsplash.com/photo-1598639753591-053c3e1477dd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1908&q=80")
Category.find_by(name: "Romance").activities.find_by(name: "Cute dinner with Thembi").photos.attach(io: file, filename: "tajmahal4.jpg", content_type: 'image/jpg')

# TURNT

count = 0
Category.find_by(name: "Turnt").activities.each do |activity|
  file = URI.open("https://images.unsplash.com/photo-1544622428-56b8d9eed7db?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80")
  activity.photos.attach(io: file, filename: "turnt#{count}.jpg", content_type: 'image/jpg')
  count += 1
  file = URI.open("https://images.unsplash.com/photo-1575489181784-a99aa58e4bb5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2791&q=80")
  activity.photos.attach(io: file, filename: "turnt#{count}.jpg", content_type: 'image/jpg')
  count += 1
  file = URI.open("https://images.unsplash.com/photo-1524491887412-14c265900364?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1780&q=80")
  activity.photos.attach(io: file, filename: "turnt#{count}.jpg", content_type: 'image/jpg')
  count += 1
  file = URI.open("https://images.unsplash.com/photo-1598639753591-053c3e1477dd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1908&q=80")
  activity.photos.attach(io: file, filename: "turnt#{count}.jpg", content_type: 'image/jpg')
  count += 1
end
