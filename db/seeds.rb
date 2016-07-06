# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def rand_time(from, to=Time.now)
  Time.at(rand_in_range(from.to_f, to.to_f))
end

def rand_in_range(from, to)
  rand * (to - from) + from
end
welcome = Welcome.create([{ title: '<%= t(:client) %>', headline: "Here's what's going on", notes: "This week we've got some great specials and bands, come down and kickit with RB!", role: 'main'}])
ballhog = Band.create([{ name: 'Ballhog!',
                      link: "https://www.youtube.com/embed/zZvz-iB_JKw",
                      link2: "http://ballhogmusic.com",
                      link3: "http://facebook.com/ballhogmusic",
                      hometown: 'Nashville, TN',
                      remote_avatar_url: 'https://fbcdn-photos-f-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-0/p235x350/76182_166393486719009_4298685_n.jpg?oh=c60ca8b91b8df5a68d494ec6cdb4f0ed&oe=568E2BCE&__gda__=1451924959_370a77267ca94163751a8b7f118ebace',
                      bio: "We're for real bitches!
“…East Nashville is better now. We have a weenery now, and a Tomato Festival. Or tomaaato, as some say. And a cool brass-grass band called Ball Hog…” – Todd Snider, The Independent Weekly Nov. 14, 2007.
Nashville’s music community is cultivating an All-star ensemble of singer-songwriters and instrumentalists playing original music based in the traditions of bluegrass, Americana, rock, folk, country and jazz.
Ballhog! is finding its musical niche through diversity, featuring bluegrass instruments and gang vocals accompanied by horns and drums. The seven-piece band formed in 2000 cut its teeth in the bars of Music City and continues to play in Nashville when not traveling to weekend shows and festivals throughout the southeast.
The band’s strength lies in well-thought-out musical arrangements, purposeful lyrics and contagious onstage enthusiasm.",
}])
oldUnion = Band.create([{ name: 'Old Union',
                      link: "https://www.youtube.com/embed/8AH-0j3wJQw",
                      link2: "http://www.stonewallmusic.com/artists/oldunion.html",
                      link3: "https://www.facebook.com/Old-Union-8759373261/",
                      hometown: 'Nashville, TN',
                      remote_avatar_url: 'https://pbs.twimg.com/profile_images/1284084793/OUNEW2.gif',
                      bio: "Road tested and ready, Old Union has been coast-to-coast delivering their coal-fired
                            rock and roll. Chuck Foster (vocals, keyboards), Johnny Zvolensky (guitar), Steve “Spotty” Swertfeger (guitar, vocals), Ben Bridges (bass, vocals), David Bryndal (drums)",
}])
johnnyNeel = Band.create([{ name: 'Johnny Neel',
                      link: "https://www.youtube.com/embed/YbBNEXe3wOg",
                      link2: "http://www.johnnyneel.com/",
                      link3: "https://www.facebook.com/johnnyneel",
                      hometown: 'Tennessee - via Delaware',
                      remote_avatar_url: 'http://www.johnnyneel.com/wp-content/uploads/2012/08/logo31.png',
                      bio: "'It's funky, it's smooth, it's a different shade of blue; It's my turn to groove.' - Johnny Neel  Born in Wilmington, Delaware,
                             Johnny Neel blind at birth cut his first single at the age of twelve, as Johnny Neel and The Shapes Of Soul. As an adult, the Johnny Neel Band
                             had a strong following up and down the East Coast and released two well-received independent albums; “One Hot Night& “You Shoulda’ Been There”.
                             Neel moved to Nashville, the premiere song writing city, in 1984. Where he immediately became recognized a session “A” studio player. Others began
                             to notice Neel’s songwriting talent and decided to take advantage by recording his songs on their albums.
                             Performing with various bands in area clubs drew the attention of former Nashville resident Dickie Betts, who asked Neel to join his road band, and
                             begin working on Dickie’s solo LP for Epic Records. That relationship led to seven cuts on the “Pattern Disruptive” LP including the Top 10 AOR hit,
                             “Rock Bottom.” Neel’s talented keyboard and harp playing on that album convinced Gregg Allman to ask Neel to tour with his road band.
                             Neel decided to join the reunited Allman Brothers Band, immersing himself in a successful tour, which led to a number one AOR smash hit during the summer
                             of 1990. Car radios all across America blasted “Good Clean Fun”, from the Seven Turns Album, co-written by Neel with Allman and Betts. The chart topping
                             hit provided the reunited Allmans with their highest charting single since “Ramblin’ Man” fifteen years prior.  Neel’s songs have been recorded by such
                             artist’s as “Montgomery/Gentry, Delbert McClinton, John Mayall, John Louis Walker and many others….  Johnny Neel is a recipient of the “Life Time
                             Achievment Award” from the 2012 Grammy’s with his work with the Allman Brothers.",
}])
enablers = Band.create([{ name: 'The Enablers',
                      link: "https://www.youtube.com/embed/tSYmw3FLRzM",
                      link2: "http://nashvilleenablers.com/",
                      link3: "https://www.facebook.com/johnnyneel",
                      hometown: 'Nashville TN',
                      remote_avatar_url: 'http://nashvilleenablers.com/wp-content/uploads/2014/11/copy-Header1.png',
                      bio: "Songs about drinkin’, hurtin, livin’, and lovin’. Good time pickin’ with a whiskey bent feelin’. This is the standard you get with
                            The Enablers, Nashville’s premier ruckus ensemble. Drawing their influence from bluegrass, old time string bands, and outlaw country,
                            while rounding it off with the attitude of rock n roll. If you like a mighty lively and colorful cast of characters serving up some high energy
                            music, The Enablers are the folks to bring it.
                            This red and rowdy group was formed by Jeff Collett (bass/vocals) and Chris McElroy ( guitar/vocals). The Music City natives searched
                            the creeks and hollars all the way from Arkansas to Virginia to find a line up that could hold their own. Collin Peterson (mandolin),
                            Carl Roberts III (washboard/percussion), John Holland (banjo), and Anna Holland (vocals..no relation), were kind enough to jump on board
                            and round it all out. Their arsenal of songs include original material, bluegrass standards, and non traditional songs with their own brand of
                            old timey sauce put on em. Since elbowing their way onto Nashville’s Bluegrass scene in 2011, The Enablers have been bringing this foot-stompin,
                            hell-raisin party to Historic Lower Broadway, events for Nashville Bluegrass Music Alliance, as well as many other venues and events in Tennessee,
                            and have no plans on stopping this train any time soon. They keep any audience entertained with a high level of enthusiasm, musicianship, and crowd participation.
                            You can’t help but have a good time and Get Enabled!",
}])
# event = Event.create([{ band_id: 1, title: 'Brass-grass-roots!', description: "Here's what's going on", start_time: rand_time(1.month.from_now)}])
# event = Event.create([{ band_id: 2, title: 'Mile 8/Old Re-Union!', description: "Seriously NUTZ! You've seen the video, now live it!", start_time: rand_time(1.month.from_now)}])
# event = Event.create([{ band_id: 3, title: 'Thursday Jam with Neely!', description: "Seriously NUTZ!  You never know really, what songs, how much of the songs, who might sit in and a bunch of other questions only answered if you show up.", start_time: rand_time(1.month.from_now)}])
# event = Event.create([{ band_id: 4, title: 'Get Enabled Right yall!,Collin Peterson (mandolin), Carl Roberts III (washboard/percussion), John Holland (banjo), and Anna Holland (vocals..no relation)', description: "Seriously NUTZ!", start_time: rand_time(1.month.from_now)}])
user_admin = User.create!(email: 'nightowlnashville@gmail.com', password: 'lyricbisonthecut', admin: true)
