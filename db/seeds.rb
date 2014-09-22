# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Poet.destroy_all
Poem.destroy_all

users = User.create([
	{
	name: "Alfred Lord Tennyson",
	email: "alt@alt.com"

	},
	{
	name: "Robert Frost",
	email: "rf@rf.com"
  	},
  	{
	name: "Langston Hughes",
	email: "lh@lh.com"
  	},
  	{
	name: "Marilyn Chin",
	email: "mc@mc.com"
  	},
  	{
	name: "Emily Dickinson",
	email: "ed@ed.com"
  	},
  	{
	name: "Jorge Luis Borges",
	email: "jlb@jlb.com"
  	}	
]);
users[0].password = 'alt'
users[0].save
users[1].password = 'rf'
users[1].save
users[2].password = 'lh'
users[2].save

users[3].password = 'mc'
users[3].save
users[4].password = 'ed'
users[4].save
users[5].password = 'jlb'
users[5].save

poets = Poet.create([
	{
	name: "Alfred Lord Tennyson",
	origin: "Somersby, Lincolnshire, England"
	},
	{
	name: "Robert Frost",
	origin: "San Francisco, California"
  	},
  	{
	name: "Langston Hughes",
	origin: "Joplin, Missouri"
  	},
  	{
	name: "Marilyn Chin",
	origin: "Hong Kong, China"
  	},
  	{
	name: "Emily Dickinson",
	origin: "Amherst, Massachusetts"
  	},
  	{
	name: "Jorge Luis Borges",
	origin: "Buenos Aires, Argentina"
  	}
]);
poets[0].user = users[0]
poets[0].save
poets[1].user = users[1]
poets[1].save
poets[2].user = users[2]
poets[2].save

poets[3].user = users[3]
poets[3].save
poets[4].user = users[4]
poets[4].save
poets[5].user = users[5]
poets[5].save
poems = Poem.create([
	{

	### TENNYSON ###
	title: "Charge Of The Light Brigade",
  	author: "Alfred Lord Tennyson",
  	content: "HALF a league, half a league, 
			Half a league onward, 
			All in the valley of Death 
			Rode the six hundred. 
			'Forward, the Light Brigade! 
			Charge for the guns! ' he said: 
			Into the valley of Death 
			Rode the six hundred. 

			'Forward, the Light Brigade! ' 
			Was there a man dismay'd? 
			Not tho' the soldier knew 
			Some one had blunder'd: 
			Their's not to make reply, 
			Their's not to reason why, 
			Their's but to do and die: 
			Into the valley of Death 
			Rode the six hundred. 

			Cannon to right of them, 
			Cannon to left of them, 
			Cannon in front of them 
			Volley'd and thunder'd; 
			Storm'd at with shot and shell, 
			Boldly they rode and well, 
			Into the jaws of Death, 
			Into the mouth of Hell 
			Rode the six hundred. 

			Flash'd all their sabres bare, 
			Flash'd as they turn'd in air 
			Sabring the gunners there, 
			Charging an army, while 
			All the world wonder'd: 
			Plunged in the battery-smoke 
			Right thro' the line they broke; 
			Cossack and Russian 
			Reel'd from the sabre-stroke 
			Shatter'd and sunder'd. 
			Then they rode back, but not 
			Not the six hundred. 

			Cannon to right of them, 
			Cannon to left of them, 
			Cannon behind them 
			Volley'd and thunder'd; 
			Storm'd at with shot and shell, 
			While horse and hero fell, 
			They that had fought so well 
			Came thro' the jaws of Death, 
			Back from the mouth of Hell, 
			All that was left of them, 
			Left of six hundred. 

			When can their glory fade? 
			O the wild charge they made! 
			All the world wonder'd. 
			Honour the charge they made! 
			Honour the Light Brigade, 
			Noble six hundred! ",

	poet: poets[0]  
	},
	{
	title: "Blow, Bugle, Blow",
	author: "Alfred Lord Tennyson",
	content: "THE splendour falls on castle walls 
				And snowy summits old in story: 
				The long light shakes across the lakes, 
				And the wild cataract leaps in glory. 
				Blow, bugle, blow, set the wild echoes flying, 
				Blow, bugle; answer, echoes, dying, dying, dying. 

				O hark, O hear! how thin and clear, 
				And thinner, clearer, farther going! 
				O sweet and far from cliff and scar 
				The horns of Elfland faintly blowing! 
				Blow, let us hear the purple glens replying: 
				Blow, bugle; answer, echoes, dying, dying, dying. 

				O love, they die in yon rich sky, 
				They faint on hill or field or river: 
				Our echoes roll from soul to soul, 
				And grow for ever and for ever. 
				Blow, bugle, blow, set the wild echoes flying, 
				And answer, echoes, answer, dying, dying, dying.",

	poet: poets[0]  
	},
	{
	title: "Audley Court",
	author: "Alred Lord Tennyson",
	content: "‘The Bull, the Fleece are cramm’d, and not a room
				For love or money. Let us picnic there
				At Audley Court.’

				I spoke, while Audley feast

				Humm’d like a hive all round the narrow quay,
				To Francis, with a basket on his arm,
				To Francis just alighted from the boat,
				And breathing of the sea. ‘With all my heart,’
				Said Francis. Then we shoulder’d thro’ the swarm,
				And rounded by the stillness of the beach
				To where the bay runs up its latest horn.

				We left the dying ebb that faintly lipp’d
				The flat red granite; so by many a sweep
				Of meadow smooth from aftermath we reach’d
				The griffin-guarded gates, and pass’d thro’ all
				The pillar’d dusk of sounding sycamores,
				And cross’d the garden to the gardener’s lodge,
				With all its casements bedded, and its walls
				And chimneys muffled in the leafy vine.


				There, on a slope of orchard, Francis laid
				A damask napkin wrought with horse and hound,
				Brought out a dusky loaf that smelt of home,
				And, half-cut-down, a pasty costly-made,
				Where quail and pigeon, lark and leveret lay,
				Like fossils of the rock, with golden yolks
				Imbedded and injellied; last, with these,
				A flask of cider from his father’s vats,
				Prime, which I knew; and so we sat and eat
				And talk’d old matters over; who was dead,
				Who married, who was like to be, and how
				The races went, and who would rent the hall:
				Then touch’d upon the game, how scarce it was
				This season; glancing thence, discuss’d the farm,
				The four-field system, and the price of grain;
				And struck upon the corn-laws, where we split,
				And came again together on the king
				With heated faces; till he laugh’d aloud;
				And, while the blackbird on the pippin hung
				To hear him, clapt his hand in mine and sang–


				‘Oh! who would fight and march and countermarch,
				Be shot for sixpence in a battle-field,
				And shovell’d up into some bloody trench
				Where no one knows? but let me live my life.
				‘Oh! who would cast and balance at a desk,
				Perch’d like a crow upon a three-legg’d stool,
				Till all his juice is dried, and all his joints
				Are full of chalk? but let me live my life.
				‘Who’d serve the state? for if I carved my name
				Upon the cliffs that guard my native land,
				I might as well have traced it in the sands;
				The sea wastes all: but let me live my life.
				‘Oh! who would love? I woo’d a woman once,
				But she was sharper than an eastern wind,
				And all my heart turn’d from her, as a thorn
				Turns from the sea; but let me live my life.’


				He sang his song, and I replied with mine:
				I found it in a volume, all of songs,
				Knock’d down to me, when old Sir Robert’s pride,
				His books–the more the pity, so I said–
				Came to the hammer here in March–and this–
				I set the words, and added names I knew.


				‘Sleep, Ellen Aubrey, sleep, and dream of me:
				Sleep, Ellen, folded in thy sister’s arm,
				And sleeping, haply dream her arm is mine.
				‘Sleep, Ellen, folded in Emilia’s arm;
				Emilia, fairer than all else but thou,
				For thou art fairer than all else that is.
				‘Sleep, breathing health and peace upon her breast:
				Sleep, breathing love and trust against her lip:
				I go to-night: I come to-morrow morn.
				‘I go, but I return: I would I were
				The pilot of the darkness and the dream.
				Sleep, Ellen Aubrey, love, and dream of me.’


				So sang we each to either, Francis Hale,
				The farmer’s son, who lived across the bay,
				My friend; and I, that having wherewithal,
				And in the fallow leisure of my life
				A rolling stone of here and everywhere,
				Did what I would; but ere the night we rose
				And saunter’d home beneath a moon, that, just
				In crescent, dimly rain’d about the leaf
				Twilights of airy silver, till we reach’d
				The limit of the hills; and as we sank
				From rock to rock upon the glooming quay,
				The town was hush’d beneath us: lower down
				The bay was oily calm; the harbour-buoy,
				Sole star of phosphorescence in the calm,
				With one green sparkle ever and anon
				Dipt by itself, and we were glad at heart. ",

	poet: poets[0]  
	},
	{
	title: "All Things will Die",
	author: "Alfred Lord Tennyson",
	content: "Clearly the blue river chimes in its flowing

				Under my eye;
				Warmly and broadly the south winds are blowing

				Over the sky.
				One after another the white clouds are fleeting;
				Every heart this May morning in joyance is beating

				Full merrily;
				Yet all things must die.
				The stream will cease to flow;
				The wind will cease to blow;
				The clouds will cease to fleet;
				The heart will cease to beat;
				For all things must die.
				All things must die.
				Spring will come never more.
				O, vanity!
				Death waits at the door.
				See! our friends are all forsaking
				The wine and the merrymaking.
				We are call’d–we must go.
				Laid low, very low,
				In the dark we must lie.
				The merry glees are still;
				The voice of the bird
				Shall no more be heard,
				Nor the wind on the hill.
				O, misery!
				Hark! death is calling
				While I speak to ye,
				The jaw is falling,
				The red cheek paling,
				The strong limbs failing;
				Ice with the warm blood mixing;
				The eyeballs fixing.
				Nine times goes the passing bell:
				Ye merry souls, farewell.
				The old earth
				Had a birth,
				As all men know,
				Long ago.
				And the old earth must die.
				So let the warm winds range,
				And the blue wave beat the shore;
				For even and morn
				Ye will never see
				Thro’ eternity.
				All things were born.
				Ye will come never more,
				For all things must die. ",

	poet: poets[0]  
	},
	{
	title: "Come down, O Maid",
	author: "Alfred Lord Tennyson",
	content: "COME down, O maid, from yonder mountain height: 
				What pleasure lives in height (the shepherd sang), 
				In height and cold, the splendour of the hills? 
				But cease to move so near the Heavens, and cease 
				To glide a sunbeam by the blasted Pine, 
				To sit a star upon the sparkling spire; 
				And come, for Love is of the valley, come, 
				For Love is of the valley, come thou down 
				And find him; by the happy threshold, he, 
				Or hand in hand with Plenty in the maize, 
				Or red with spirted purple of the vats, 
				Or foxlike in the vine; nor cares to walk 
				With Death and Morning on the silver horns, 
				Nor wilt thou snare him in the white ravine, 
				Nor find him dropt upon the firths of ice, 
				That huddling slant in furrow-cloven falls 
				To roll the torrent out of dusky doors: 
				But follow; let the torrent dance thee down 
				To find him in the valley; let the wild 
				Lean-headed Eagles yelp alone, and leave 
				The monstrous ledges there to slope, and spill 
				Their thousand wreaths of dangling water-smoke, 
				That like a broken purpose waste in air: 
				So waste not thou; but come; for all the vales 
				Await thee; azure pillars of the hearth 
				Arise to thee; the children call, and I 
				Thy shepherd pipe, and sweet is every sound, 
				Sweeter thy voice, but every sound is sweet; 
				Myriads of rivulets hurrying thro' the lawn, 
				The moan of doves in immemorial elms, 
				And murmuring of innumerable bees. ",

	poet: poets[0]  
	},
	### ROBERT FROST
	{
	title: "The Road Not Taken",
	author: "Robert Frost",
	content: "Two roads diverged in a yellow wood,
				And sorry I could not travel both
				And be one traveler, long I stood
				And looked down one as far as I could
				To where it bent in the undergrowth; 

				Then took the other, as just as fair,
				And having perhaps the better claim
				Because it was grassy and wanted wear,
				Though as for that the passing there
				Had worn them really about the same,

				And both that morning equally lay
				In leaves no step had trodden black.
				Oh, I kept the first for another day! 
				Yet knowing how way leads on to way
				I doubted if I should ever come back.

				I shall be telling this with a sigh
				Somewhere ages and ages hence:
				Two roads diverged in a wood, and I,
				I took the one less traveled by,
				And that has made all the difference. ",
	poet: poets[1]  
	},
	{
	title: "Fire and Ice",
	author: "Robert Frost",
	content: "Some say the world will end in fire,
				Some say in ice.
				From what I've tasted of desire
				I hold with those who favor fire.
				But if it had to perish twice,
				I think I know enough of hate
				To say that for destruction ice
				Is also great
				And would suffice. ",

	poet: poets[1]  
	},
	{
	title: "A Boundless Moment",
	author: "Robert Frost",
	content: "He halted in the wind, and - what was that
				Far in the maples, pale, but not a ghost? 
				He stood there bringing March against his thought,
				And yet too ready to believe the most.

				'Oh, that's the Paradise-in-bloom,' I said; 
				And truly it was fair enough for flowers
				had we but in us to assume in march
				Such white luxuriance of May for ours.

				We stood a moment so in a strange world,
				Myself as one his own pretense deceives; 
				And then I said the truth (and we moved on) .
				A young beech clinging to its last year's leaves. ",

	poet: poets[1]  
	},
	{
	title: "A Servant To Servants",
	author: "Robert Frost",
	content: "I didn't make you know how glad I was
				To have you come and camp here on our land.
				I promised myself to get down some day
				And see the way you lived, but I don't know!
				With a houseful of hungry men to feed
				I guess you'd find.... It seems to me
				I can't express my feelings any more
				Than I can raise my voice or want to lift
				My hand (oh, I can lift it when I have to).
				Did ever you feel so? I hope you never.
				It's got so I don't even know for sure
				Whether I am glad, sorry, or anything.
				There's nothing but a voice-like left inside
				That seems to tell me how I ought to feel,
				And would feel if I wasn't all gone wrong.
				You take the lake. I look and look at it.
				I see it's a fair, pretty sheet of water.
				I stand and make myself repeat out loud
				The advantages it has, so long and narrow,
				Like a deep piece of some old running river
				Cut short off at both ends. It lies five miles
				Straight away through the mountain notch
				From the sink window where I wash the plates,
				And all our storms come up toward the house,
				Drawing the slow waves whiter and whiter and whiter.
				It took my mind off doughnuts and soda biscuit
				To step outdoors and take the water dazzle
				A sunny morning, or take the rising wind
				About my face and body and through my wrapper,
				When a storm threatened from the Dragon's Den,
				And a cold chill shivered across the lake.
				I see it's a fair, pretty sheet of water,
				Our Willoughby! How did you hear of it?
				I expect, though, everyone's heard of it.
				In a book about ferns? Listen to that!
				You let things more like feathers regulate
				Your going and coming. And you like it here?
				I can see how you might. But I don't know!
				It would be different if more people came,
				For then there would be business. As it is,
				The cottages Len built, sometimes we rent them,
				Sometimes we don't. We've a good piece of shore
				That ought to be worth something, and may yet.
				But I don't count on it as much as Len.
				He looks on the bright side of everything,
				Including me. He thinks I'll be all right
				With doctoring. But it's not medicine--
				Lowe is the only doctor's dared to say so--
				It's rest I want--there, I have said it out--
				From cooking meals for hungry hired men
				And washing dishes after them--from doing
				Things over and over that just won't stay done.
				By good rights I ought not to have so much
				Put on me, but there seems no other way.
				Len says one steady pull more ought to do it.
				He says the best way out is always through.
				And I agree to that, or in so far
				As that I can see no way out but through--
				Leastways for me--and then they'll be convinced.
				It's not that Len don't want the best for me.
				It was his plan our moving over in
				Beside the lake from where that day I showed you
				We used to live--ten miles from anywhere.
				We didn't change without some sacrifice,
				But Len went at it to make up the loss.
				His work's a man's, of course, from sun to sun,
				But he works when he works as hard as I do--
				Though there's small profit in comparisons.
				(Women and men will make them all the same.)
				But work ain't all. Len undertakes too much.
				He's into everything in town. This year
				It's highways, and he's got too many men
				Around him to look after that make waste.
				They take advantage of him shamefully,
				And proud, too, of themselves for doing so.
				We have four here to board, great good-for-nothings,
				Sprawling about the kitchen with their talk
				While I fry their bacon. Much they care!
				No more put out in what they do or say
				Than if I wasn't in the room at all.
				Coming and going all the time, they are:
				I don't learn what their names are, let alone
				Their characters, or whether they are safe
				To have inside the house with doors unlocked.
				I'm not afraid of them, though, if they're not
				Afraid of me. There's two can play at that.
				I have my fancies: it runs in the family.
				My father's brother wasn't right. They kept him
				Locked up for years back there at the old farm.
				I've been away once--yes, I've been away.
				The State Asylum. I was prejudiced;
				I wouldn't have sent anyone of mine there;
				You know the old idea--the only asylum
				Was the poorhouse, and those who could afford,
				Rather than send their folks to such a place,
				Kept them at home; and it does seem more human.
				But it's not so: the place is the asylum.
				There they have every means proper to do with,
				And you aren't darkening other people's lives--
				Worse than no good to them, and they no good
				To you in your condition; you can't know
				Affection or the want of it in that state.
				I've heard too much of the old-fashioned way.
				My father's brother, he went mad quite young.
				Some thought he had been bitten by a dog,
				Because his violence took on the form
				Of carrying his pillow in his teeth;
				But it's more likely he was crossed in love,
				Or so the story goes. It was some girl.
				Anyway all he talked about was love.
				They soon saw he would do someone a mischief
				If he wa'n't kept strict watch of, and it ended
				In father's building him a sort of cage,
				Or room within a room, of hickory poles,
				Like stanchions in the barn, from floor to ceiling,--
				A narrow passage all the way around.
				Anything they put in for furniture
				He'd tear to pieces, even a bed to lie on.
				So they made the place comfortable with straw,
				Like a beast's stall, to ease their consciences.
				Of course they had to feed him without dishes.
				They tried to keep him clothed, but he paraded
				With his clothes on his arm--all of his clothes.
				Cruel--it sounds. I 'spose they did the best
				They knew. And just when he was at the height,
				Father and mother married, and mother came,
				A bride, to help take care of such a creature,
				And accommodate her young life to his.
				That was what marrying father meant to her.
				She had to lie and hear love things made dreadful
				By his shouts in the night. He'd shout and shout
				Until the strength was shouted out of him,
				And his voice died down slowly from exhaustion.
				He'd pull his bars apart like bow and bow-string,
				And let them go and make them twang until
				His hands had worn them smooth as any ox-bow.
				And then he'd crow as if he thought that child's play--
				The only fun he had. I've heard them say, though,
				They found a way to put a stop to it.
				He was before my time--I never saw him;
				But the pen stayed exactly as it was
				There in the upper chamber in the ell,
				A sort of catch-all full of attic clutter.
				I often think of the smooth hickory bars.
				It got so I would say--you know, half fooling--
				\"It's time I took my turn upstairs in jail\"--
				Just as you will till it becomes a habit.
				No wonder I was glad to get away.
				Mind you, I waited till Len said the word.
				I didn't want the blame if things went wrong.
				I was glad though, no end, when we moved out,
				And I looked to be happy, and I was,
				As I said, for a while--but I don't know!
				Somehow the change wore out like a prescription.
				And there's more to it than just window-views
				And living by a lake. I'm past such help--
				Unless Len took the notion, which he won't,
				And I won't ask him--it's not sure enough.
				I 'spose I've got to go the road I'm going:
				Other folks have to, and why shouldn't I?
				I almost think if I could do like you,
				Drop everything and live out on the ground--
				But it might be, come night, I shouldn't like it,
				Or a long rain. I should soon get enough,
				And be glad of a good roof overhead.
				I've lain awake thinking of you, I'll warrant,
				More than you have yourself, some of these nights.
				The wonder was the tents weren't snatched away
				From over you as you lay in your beds.
				I haven't courage for a risk like that.
				Bless you, of course, you're keeping me from work,
				But the thing of it is, I need to be kept.
				There's work enough to do--there's always that;
				But behind's behind. The worst that you can do
				Is set me back a little more behind.
				I sha'n't catch up in this world, anyway.
				I'd rather you'd not go unless you must.",

	poet: poets[1]  
	},
	{
	title: "A Soldier",
	author: "Robert Frost",
	content: "He is that fallen lance that lies as hurled,
				That lies unlifted now, come dew, come rust,
				But still lies pointed as it plowed the dust.
				If we who sight along it round the world,
				See nothing worthy to have been its mark,
				It is because like men we look too near,
				Forgetting that as fitted to the sphere,
				Our missiles always make too short an arc.
				They fall, they rip the grass, they intersect
				The curve of earth, and striking, break their own;
				They make us cringe for metal-point on stone.
				But this we know, the obstacle that checked
				And tripped the body, shot the spirit on
				Further than target ever showed or shone. ",

	poet: poets[1]  
	},
	### LANGSTON HUGHES ###
	{
	title: "Dreams",
	author: "Langston Hughes",
	content: "Hold fast to dreams
				For if dreams die
				Life is a broken-winged bird
				That cannot fly.
				Hold fast to dreams
				For when dreams go
				Life is a barren field
				Frozen with snow. ",
	poet: poets[2]  
	},
	{
	title: "Mother to Son",
	author: "Langston Hughes",
	content: "Well, son, I'll tell you:
				Life for me ain't been no crystal stair.
				It's had tacks in it,
				And splinters,
				And boards torn up,
				And places with no carpet on the floor—
				Bare.
				But all the time 
				I'se been a-climbin' on,
				And reachin' landin's,
				And turnin' corners,
				And sometimes goin' in the dark
				Where there ain't been no light.
				So, boy, don't you turn back.
				Don't you set down on the steps.
				'Cause you finds it's kinder hard.
				Don't you fall now—
				For I'se still goin', honey,
				I'se still climbin',
				And life for me ain't been no crystal stair. ",
	poet: poets[2]  
	},
	{
	title: "Life Is Fine",
	author: "Langston Hughes",
	content: "I went down to the river,
				I set down on the bank.
				I tried to think but couldn't,
				So I jumped in and sank.

				I came up once and hollered!
				I came up twice and cried!
				If that water hadn't a-been so cold
				I might've sunk and died.

				But it was Cold in that water! It was cold!

				I took the elevator
				Sixteen floors above the ground.
				I thought about my baby
				And thought I would jump down.

				I stood there and I hollered!
				I stood there and I cried!
				If it hadn't a-been so high
				I might've jumped and died.

				But it was High up there! It was high!

				So since I'm still here livin',
				I guess I will live on.
				I could've died for love--
				But for livin' I was born

				Though you may hear me holler,
				And you may see me cry--
				I'll be dogged, sweet baby,
				If you gonna see me die.

				Life is fine! Fine as wine! Life is fine! ",
	poet: poets[2]  
	},
	{
	title: "Democracy",
	author: "Langston Hughes",
	content: "Democracy will not come
				Today, this year
				Nor ever
				Through compromise and fear.

				I have as much right 
				As the other fellow has
				To stand
				On my two feet 
				And own the land.

				I tire so of hearing people say, 
				Let things take their course.
				Tomorrow is another day.
				I do not need my freedom when I'm dead.
				I cannot live on tomorrow's bread.

				Freedom
				Is a strong seed
				Planted
				In a great need.

				I live here, too.
				I want freedom
				Just as you. ",
	poet: poets[2]  
	},
	{
	title: "Minstrel Man",
	author: "Langston Hughes",
	content: "Because my mouth
				Is wide with laughter
				And my throat
				Is deep with song, 
				You do not think 
				I suffer after
				I have held my pain
				So long?

				Because my mouth 
				Is wide with laughter, 
				You do not hear
				My inner cry? 
				Because my feet
				Are gay with dancing, 
				You do not know 
				I die? ",
	poet: poets[2]  
	},
	### Marilyn Chin ###
	{
	title: "How I Got That Name",
	author: "Marilyn Chin",
	content: "I am Marilyn Mei Ling Chin
				Oh, how I love the resoluteness
				of that first person singular
				followed by that stalwart indicative
				of \"be,\" without the uncertain i-n-g
				of “becoming.”  Of course,
				the name had been changed
				somewhere between Angel Island and the sea,
				when my father the paperson
				in the late 1950s
				obsessed with a bombshell blond
				transliterated “Mei Ling” to “Marilyn.”
				And nobody dared question
				his initial impulse—for we all know
				lust drove men to greatness,
				not goodness, not decency.
				And there I was, a wayward pink baby,
				named after some tragic white woman
				swollen with gin and Nembutal.
				My mother couldn’t pronounce the “r.”
				She dubbed me “Numba one female offshoot”
				for brevity: henceforth, she will live and die
				in sublime ignorance, flanked
				by loving children and the “kitchen deity.”
				While my father dithers,
				a tomcat in Hong Kong trash—
				a gambler, a petty thug,
				who bought a chain of chopsuey joints
				in Piss River, Oregon,
				with bootlegged Gucci cash.
				Nobody dared question his integrity given
				his nice, devout daughters
				and his bright, industrious sons
				as if filial piety were the standard
				by which all earthly men are measured.

				*

				Oh, how trustworthy our daughters,
				how thrifty our sons!
				How we’ve managed to fool the experts
				in education, statistic and demography—
				We’re not very creative but not adverse to rote-learning.
				Indeed, they can use us.
				But the “Model Minority” is a tease.
				We know you are watching now,
				so we refuse to give you any!
				Oh, bamboo shoots, bamboo shoots!
				The further west we go, we’ll hit east;
				the deeper down we dig, we’ll find China.
				History has turned its stomach
				on a black polluted beach—
				where life doesn’t hinge
				on that red, red wheelbarrow,
				but whether or not our new lover
				in the final episode of “Santa Barbara”
				will lean over a scented candle
				and call us a “bitch.”
				Oh God, where have we gone wrong?
				We have no inner resources!

				*

				Then, one redolent spring morning
				the Great Patriarch Chin
				peered down from his kiosk in heaven
				and saw that his descendants were ugly.
				One had a squarish head and a nose without a bridge
				Another’s profile—long and knobbed as a gourd.
				A third, the sad, brutish one
				may never, never marry.
				And I, his least favorite—
				\"not quite boiled, not quite cooked,\"
				a plump pomfret simmering in my juices—
				too listless to fight for my people’s destiny.
				“To kill without resistance is not slaughter”
				says the proverb.  So, I wait for imminent death.
				The fact that this death is also metaphorical
				is testament to my lethargy.

				*

				So here lies Marilyn Mei Ling Chin,
				married once, twice to so-and-so, a Lee and a Wong,
				granddaughter of Jack “the patriarch”
				and the brooding Suilin Fong,
				daughter of the virtuous Yuet Kuen Wong
				and G.G. Chin the infamous,
				sister of a dozen, cousin of a million,
				survived by everbody and forgotten by all.
				She was neither black nor white,
				neither cherished nor vanquished,
				just another squatter in her own bamboo grove
				minding her poetry—
				when one day heaven was unmerciful,
				and a chasm opened where she stood.
				Like the jowls of a mighty white whale,
				or the jaws of a metaphysical Godzilla,
				it swallowed her whole.
				She did not flinch nor writhe,
				nor fret about the afterlife,
				but stayed!  Solid as wood, happily
				a little gnawed, tattered, mesmerized
				by all that was lavished upon her
				and all that was taken away!",
	poet: poets[3]  
	},
	{
	title: "One Child Has Brown Eyes",
	author: "Marilyn Chin",
	content: "One child has brown eyes, one has blue
				One slanted, another rounded
				One so nearsighted he squints internal 
				One had her extra epicanthic folds removed
				One downcast, one couldn’t be bothered
				One roams the heavens for a perfect answer
				One transfixed like a dead doe, a convex mirror
				One shines double-edged like a poisoned dagger
				Understand their vision, understand their blindness
				Understand their vacuity, understand their mirth",
	poet: poets[3]  
	},
	{
	title: "Quiet the Dog, Tether the Pony",
	author: "Marilyn Chin",
	content: "Gaze     gaze      beyond the vermilion door

				Leaf      leaf       tremble    fall

				Stare blankly      at the the road’s      interminable end



				Reduplications     cold      cold     mountains

				Long     long    valleys          broad    broad     waters

				Tears     are exhausted      now    shed    blood



				Deep    deep     the baleful courtyards     who knows how deep

				Folds on folds       of curtains

				Gates         trap        infinite      twilight



				Walk     walk        through     waning meadows

				Steep     steep        toward       ten-thousand Buddhas

				Knuckles     blue     on the balustrade



				In the land of      missing      pronouns

				Sun     is a     continuous     performance

				And we      my lover      are      nothing",
	poet: poets[3]  
	},
	{
	title: "from Two Inch Fables",
	author: "Marilyn Chin",
	content: "Yellow gold is meaningless
				Learning is better than pearls
				A woman without brilliance
				Leaves nothing but dim children
				 
				You can hawk your gold if you’re hungry
				Sell your mule when you’re desperate
				What can you do with so many poems
				Sprouting dead hairs in an empty coffin
				 
				*

				Lotus: pink     dewlapped     pretty
				Lotus: upturned palm of my dead mother
				Lotus:  a foot       a broken arch
				Lotus:  plop      and a silent     ripple
				 
				*
				 
				I hum and stroll
				And contemplate a poem
				While young boys are dying
				In West Darfur
				 
				I hum and stroll
				And contemplate a poem
				While young boys are dying
				In West Darfur",
	poet: poets[3]  
	},
	{
	title: "The Survivor",
	author: "Marilyn Chin",
	content: "Don't tap your chopsticks against your bowl.
				Don't throw your teacup against the wall in anger.
				Don't suck on your long black braid and weep.
				Don't tarry around the big red sign that says
				\"danger!\"
				All the tempests will render still; seas will calm,
				horses will retreat, voices to surrender.
				That you have this way and not that,
				that your skin is yellow, not white, not black,
				that you were born not a boychild but a girl,
				that this world will be forever puce-pink are just as well.
				Remember, the survivor is not the strongest or
				most clever;
				merely, the survivor is almost always the youngest.
				And you shall have to relinguish that title
				before long.",
	poet: poets[3]  
	},
	### Emily Dickinson ###
	{
	title: "\"Hope\" is the thing with feathers",
	author: "Emily Dickinson",
	content: "\"Hope\" is the thing with feathers—
				That perches in the soul—
				And sings the tune without the words—
				And never stops—at all—

				And sweetest—in the Gale—is heard—
				And sore must be the storm—
				That could abash the little Bird
				That kept so many warm—

				I've heard it in the chillest land—
				And on the strangest Sea—
				Yet, never, in Extremity,
				It asked a crumb—of Me. ",
	poet: poets[4]  
	},
	{
	title: "A Book",
	author: "Emily Dickinson",
	content: "There is no frigate like a book
				To take us lands away,
				Nor any coursers like a page
				Of prancing poetry.
				This traverse may the poorest take
				Without oppress of toll;
				How frugal is the chariot
				That bears a human soul! ",
	poet: poets[4]  
	},
	{
	title: "A Charm invests a face",
	author: "Emily Dickinson",
	content: "A Charm invests a face
				Imperfectly beheld—
				The Lady dare not lift her Veil
				For fear it be dispelled—

				But peers beyond her mesh—
				And wishes—and denies—
				Lest Interview—annul a want
				That Image—satisfies— ",
	poet: poets[4]  
	},
	{
	title: "A Clock Stopped -- Not The Mantel's",
	author: "Emily Dickinson",
	content: "A clock stopped -- not the mantel's
				Geneva's farthest skill
				Can't put the puppet bowing
				That just now dangled still.

				An awe came on the trinket!
				The figures hunched with pain,
				Then quivered out of decimals
				Into degreeless noon.

				It will not stir for doctors,
				This pendulum of snow;
				The shopman importunes it,
				While cool, concernless No

				Nods from the gilded pointers,
				Nods from seconds slim,
				Decades of arrogance between
				The dial life and him. ",
	poet: poets[4]  
	},
	{
	title: "A Death blow is a Life blow to Some",
	author: "Emily Dickinson",
	content: "A Death blow is a Life blow to Some
				Who till they died, did not alive become—
				Who had they lived, had died but when
				They died, Vitality begun. ",
	poet: poets[4]  
	},
	### Jorge Luis Borges ###
	{
	title: "A Patio",
	author: "Jorge Luis Borges",
	content: "At evening
				they grow weary, the patio's two or three colours.
				Tonight, the moon, bright circle,
				fails to dominate space.
				Patio, channel of sky.
				The patio is the slope
				down which sky flows into the house.
				Serene,
				eternity waits at the crossroad of stars.
				It's pleasant to live in the friendly dark
				of entrance-way, arbour, and cistern. ",
	poet: poets[5]  
	},
	{
	title: "Simplicity",
	author: "Jorge Luis Borges",
	content: "It opens, the gate to the garden
				with the docility of a page
				that frequent devotion questions
				and inside, my gaze
				has no need to fix on objects
				that already exist, exact, in memory.
				I know the customs and souls
				and that dialect of allusions
				that every human gathering goes weaving.
				I've no need to speak
				nor claim false privilege;
				they know me well who surround me here,
				know well my afflictions and weakness.
				This is to reach the highest thing,
				that Heaven perhaps will grant us:
				not admiration or victory
				but simply to be accepted
				as part of an undeniable Reality,
				like stones and trees. ",
	poet: poets[5]  
	},
	{
	title: "A History of Night",
	author: "Jorge Luis Borges",
	content: "Through the course of generations
				men brought the night into being.
				In the beginning were blindness and dream
				and thorns which gash the bare foot
				and fear of wolves.
				We shall never know who fashioned the word
				for the interval of darkness
				which divides the two half-lights.
				We shall never know in what century it stood
				for the starry spaces.
				Others began the myth.
				They made night mother of the tranquil Fates
				who weave all destiny
				and sacrificed black sheep to her
				and the rooster which announced her end.
				The Chaldeans gave her twelve houses;
				infinite worlds, the Stoic Portico.
				Latin hexameters molded her,
				and Pascal’s dread.
				Luis de León saw in her the homeland
				of his shivering soul.
				Now we feel her inexhaustible
				as an old wine
				and no one can think of her without vertigo,
				and time has charged her with eternity.

				And to think that night would not exist
				without those tenuous instruments, the eyes.",
	poet: poets[5]  
	},
	{
	title: "The Other Tiger",
	author: "Jorge Luis Borges",
	content: "A tiger comes to mind. The twilight here
				Exalts the vast and busy Library
				And seems to set the bookshelves back in gloom;
				Innocent, ruthless, bloodstained, sleek
				It wanders through its forest and its day
				Printing a track along the muddy banks
				Of sluggish streams whose names it does not know
				(In its world there are no names or past
				Or time to come, only the vivid now)
				And makes its way across wild distances
				Sniffing the braided labyrinth of smells
				And in the wind picking the smell of dawn
				And tantalizing scent of grazing deer;
				Among the bamboo's slanting stripes I glimpse
				The tiger's stripes and sense the bony frame
				Under the splendid, quivering cover of skin.
				Curving oceans and the planet's wastes keep us
				Apart in vain; from here in a house far off
				In South America I dream of you,
				Track you, O tiger of the Ganges' banks.

				It strikes me now as evening fills my soul
				That the tiger addressed in my poem
				Is a shadowy beast, a tiger of symbols
				And scraps picked up at random out of books,
				A string of labored tropes that have no life,
				And not the fated tiger, the deadly jewel
				That under sun or stars or changing moon
				Goes on in Bengal or Sumatra fulfilling
				Its rounds of love and indolence and death.
				To the tiger of symbols I hold opposed
				The one that's real, the one whose blood runs hot
				As it cuts down a herd of buffaloes,
				And that today, this August third, nineteen
				Fifty-nine, throws its shadow on the grass;
				But by the act of giving it a name,
				By trying to fix the limits of its world,
				It becomes a fiction not a living beast,
				Not a tiger out roaming the wilds of earth.

				We'll hunt for a third tiger now, but like
				The others this one too will be a form
				Of what I dream, a structure of words, and not
				The flesh and one tiger that beyond all myths
				Paces the earth. I know these things quite well,
				Yet nonetheless some force keeps driving me
				In this vague, unreasonable, and ancient quest,
				And I go on pursuing through the hours
				Another tiger, the beast not found in verse.",
	poet: poets[5]  
	},
	{
	title: "Limits",
	author: "Jorge Luis Borges",
	content: "Of all the streets that blur in to the sunset,
				There must be one (which, I am not sure)
				That I by now have walked for the last time
				Without guessing it, the pawn of that Someone

				Who fixes in advance omnipotent laws,
				Sets up a secret and unwavering scale
				For all the shadows, dreams, and forms
				Woven into the texture of this life.

				If there is a limit to all things and a measure
				And a last time and nothing more and forgetfulness,
				Who will tell us to whom in this house
				We without knowing it have said farewell?

				Through the dawning window night withdraws
				And among the stacked books which throw
				Irregular shadows on the dim table,
				There must be one which I will never read.

				There is in the South more than one worn gate,
				With its cement urns and planted cactus,
				Which is already forbidden to my entry,
				Inaccessible, as in a lithograph.

				There is a door you have closed forever
				And some mirror is expecting you in vain;
				To you the crossroads seem wide open,
				Yet watching you, four-faced, is a Janus.

				There is among all your memories one
				Which has now been lost beyond recall.
				You will not be seen going down to that fountain
				Neither by white sun nor by yellow moon.

				You will never recapture what the Persian
				Said in his language woven with birds and roses,
				When, in the sunset, before the light disperses,
				You wish to give words to unforgettable things.

				And the steadily flowing Rhone and the lake,
				All that vast yesterday over which today I bend?
				They will be as lost as Carthage,
				Scourged by the Romans with fire and salt.

				At dawn I seem to hear the turbulent
				Murmur of crowds milling and fading away;
				They are all I have been loved by, forgotten by;
				Space, time, and Borges now are leaving me.",
	poet: poets[5]  
	}
]);

	# name: "",
	# email: "",
	# origin: ""

	# {
	# title: "",
	# author: "",
	# content: "",
	# poet: poets[5]  
	# }












