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
	email: "alt@alt.com",
	origin: "Somersby, Lincolnshire, England"

	},
	{
	name: "W.B. Yeats",
	email: "wby@wby.com",
	origin: "Sandymount, Republic of Ireland"
  	},
  	{
	name: "Robert Frost",
	email: "rf@rf.com",
	origin: "San Francisco, California"
  	}		
]);
users[0].password = 'alt'
users[0].save
users[1].password = 'wby'
users[1].save
users[2].password = 'rf'
users[2].save
poets = Poet.create([
	{
	name: "Alfred Lord Tennyson",
	email: "alt@alt.com",
	origin: "Somersby, Lincolnshire, England"
	},
	{
	name: "W.B. Yeats",
	email: "wby@wby.com",
	origin: "Sandymount, Republic of Ireland"
  	},
  	{
	name: "Robert Frost",
	email: "rf@rf.com",
	origin: "San Francisco, California"
  	}
]);
poets[0].user = users[0]
poets[0].save
poets[1].user = users[1]
poets[1].save
poets[2].user = users[2]
poets[2].save
poems = Poem.create([
	{
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
	title: "A Drinking Song",
  	author: "W.B. Yeats",
  	content: "WINE comes in at the mouth
			And love comes in at the eye;
			That's all we shall know for truth
			Before we grow old and die.
			I lift the glass to my mouth,
			I look at you, and I sigh. ",

	poet: poets[1]  
	},
	{
	title: "A Man Young And Old: I. First Love",
  	author: "W.B. Yeats",
  	content: "Though nurtured like the sailing moon
				In beauty's murderous brood,
				She walked awhile and blushed awhile
				And on my pathway stood
				Until I thought her body bore
				A heart of flesh and blood.

				But since I laid a hand thereon
				And found a heart of stone
				I have attempted many things
				And not a thing is done,
				For every hand is lunatic
				That travels on the moon.

				She smiled and that transfigured me
				And left me but a lout,
				Maundering here, and maundering there,
				Emptier of thought
				Than the heavenly circuit of its stars
				When the moon sails out. ",

	poet: poets[1]  
	},
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

	poet: poets[2]  
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

	poet: poets[2]  
	}
]);

# name: "",
# email: "",
# origin: ""

# {
# title: "",
# author: "",
# content: "",

# poet: poets[2]  
# }












