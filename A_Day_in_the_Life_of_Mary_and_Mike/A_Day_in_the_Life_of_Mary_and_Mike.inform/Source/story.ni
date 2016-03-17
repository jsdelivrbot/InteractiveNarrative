"A Day in the Life of Mary and Mike" by Amir Ashkan Nourkhalaj

When play begins: say "Game Tutorial:[line break]This Interactive Fiction game is a mixture of Galatea, and Façade.[line break]The player can go east, west, north, or south only when they are outside Mary and Mike's house. Once in the house they player can ask Mike and Mary questions which follow these formats:[line break][line break]ask X about Y[line break]ask Mike about job[line break]ask Mary about...[line break]etc...[line break][line break]The players can type 'hint' at anytime to get a list of commands they can type to ask Mike, or Mary questions.[line break]There are also options such as attack or defend, which the player can use to take Mike, or Mary's side in the argument.[line break]Based on the player's choices the game will have multiple endings."
 
The story description is "You are in town, done with your business meeting one day early. You decided to give Mary and Mike a surprise visit. Mike was your closest and only friend in college. You have known him for more than two decades. Both of you got hired at the same company and have been co-workers since the day you finished school. Mike met his wife, Mary, about 12 years ago, in one of the company’s social gatherings. After your accident that happened 5 years ago and the loss of your eyesight, you managed to keep your job and continue with your life because of their help. Three years ago, they were transferred to another division of the country to work for the eastern branch. The last time you guys hung out was at last year’s Christmas holidays gathering. [line break]You get off the cab and the taxi driver takes you to the entrance of their house.";

Porch is a room.
Street is a room.
Kitchen is a room.
The wooden door is a door. 
The wooden door is locked.
The wooden door is north of the Porch and south of the House.
The street is south of the Porch.
The kitchen is east of the Houes.
Mary is a person in the Kitchen.
Mike is a person in the House.
package is a closed openable container.
description of package is "You use your hands to examine the package. It’s rather a thin envelope with some papers inside it.".
There is papers inside the package.
description of papers is "There are multiple glossy papers as big as your palm.".
package is in Marry.
knockNum is a number that varies.
knockNum is 0.
knowWhy is a number that varies.
knowWhy is 0.
happ is a number that varies.
happ is 0.
packageOp is a number that varies.
packageOp is 0.

AttackMikes is a number variable.
AttackMikes is 0.
AttackMarys is a number variable.
AttackMarys is 0.
DefendMikes is a number variable.
DefendMikes is 0.
DefendMarys is a number variable.
DefendMarys is 0.
AttackOn is a number that varies.
AttackOn is 0.
LoveMike is a number that varies.
LoveMike is 0.
LoveMary is a number that varies.
LoveMary is 0.

RandomNo is a number that varies.

rolling is an action applying to nothing.
carry out rolling:
	now RandomNo is a random number from 1 to 7;


Understand "defend [someone]" as defending.
defending is an action applying to one thing.
	
Instead of listening:
	if the player is in porch:	
		if knockNum is 0:
			say "To get a grasp of the situation, you close your ear to the door and listen carefully.[line break]Woman: 'you know what Michael?! I think it’s enough. I don’t want to talk about it anymore and I’m tired of acting like a fool. That’s it for us.'[line break]The footsteps of the woman started rushing away from the living room.";
		otherwise:
			say "You can only hear the sound of cars in the street.";
	say "[paragraph break]";	

Before looking:
	if player is in porch:
		say "Scent of Jasmine mixed with citrus gives you relief. You get to the door. You hear the sound of argument coming from the other side of the door. Standing there, frozen and unsure of what to do.[line break]";
	stop the action;
	
After going:
	if the player is in the street:
		end the story saying "Listening to Mike and Mary argue brings back old memories. It was always hard for you to stay out of their arguments. You alway wanted to jump in and make things better, but somehow things alwats end up getting worse. Mike and Mary didn't like it when you got involved. These are memories you have been trying to forget, so you decide to return home.";
	

Before opening the door:
	if player is in porch:
		say "I think it'd be rude to open someone else's door.";
		stop the action;
	otherwise:
		say "It'd be rude to leave the house now.";
		stop the action;
			
		
Understand "knock on the door" as knocking.
Understand "knock on door" as knocking.
Understand "knock" as knocking.
Understand "ring the bell" as knocking.
knocking is an action applying to nothing.
carry out knocking:
	if knockNum is 0:
		say "The argument stops and no more sound is coming from the house. As if no one has ever lived in this house. you better knock again.";
		now knockNum is 2;
	otherwise:
		say "You hear someone approaching the door. Then a slightly irritated sound asks from behind the door: 'WHO IS IT?' [line break]You: 'Your only adorable blind friend!'[line break]You hear the sound of door being opened and smiling voice welcoming you in. [paragraph break][bold type]You get inside the house.";
		move the player to the house;
		
Before knocking:
	if the player is not in porch:
		say "You can't do that!";
		stop the action;
		
[*********************************ASK MIKE********************************]		
Instead of asking Mike about something:
	if the player's command includes "House" for the first time:
		say "You: 'How do you like the house?'[line break]Mike: 'Ah, it’s your first time here. It’s not bad. Mary loves the garden. She spends most of her free time there. The house itself is pretty small, the kitchen is cozy and the living room is only a fancified corridor. No complains for the bedroom though. It’s big enough for us to live in it happily.' [line break]You sense a hint of irony in Mike’s voice.";
	otherwise if the player's command includes "House":
		say "Mike: 'I already told you about the house.'[line break]";
	otherwise if the player's command includes "How he has been" for the first time:
		say "You: 'So, how have you been?'[line break]Mike: 'I've been great. Away from friends and my parents but I ain't complaining.'";
	otherwise if the player's command includes "How he has been":
		say "Mike: 'Same as 2 seconds ago.'[line break]";
	otherwise if the player's command includes "life" for the first time:
		say "You: 'How's life treating you these days?'[line break]Mike: 'I coudn't be happier with my life. I have a good job, amazing wife, and great friends.'";
	otherwise if the player's command includes "Life":
		say "Mike: 'Lovely!'[line break]";
	otherwise if the player's command includes "Day" for the first time:
		say "You: 'How is your day going so far?'[line break]Mike: 'Well today has been an interesting day so far.'";
	otherwise if the player's command includes "Day":
		say "Mike: 'Shitty, is that what you wanna hear?'[line break]";
	otherwise if the player's command includes "Weather" for the first time:
		say "You: 'It's a nice day today.'[line break]Mike: 'Yeah, the weather has been great these past few days.'";
	otherwise if the player's command includes "Weather":
		say "Mike: 'Still beautiful.'[line break]";
	otherwise if the player's command includes "Wife" for the first time:
		say "You: 'How's Mary?'[line break]Mike: 'Oh, Mary is good. She is here too. She is in her room, taking care of some stuff. She should be done soon. She’ll be happy to know that you are here.'";
	otherwise if the player's command includes "Wife":
		say "Mike: 'I don't know. She's taking longer than usual.'[line break]";
	otherwise if the player's command includes "Sex" for the first time:
		say "Mike: 'Yep, here comes the famous vulgarity. I know we've been friends for a long time, but, come on!'[line break]";
	otherwise if the player's command includes "Sex":
		say "Mike: 'You are really persistent. No more talk involving... that... topic... please?'[line break]";
	otherwise if the player's command includes "Child" for the first time:
		say "Mike: 'I always wanted children. I'm not sure when... We have to be ready for it.'[line break]";
	otherwise if the player's command includes "Child":
		say "Mike: 'Mary should be on board with it too.'[line break]";
	otherwise if the player's command includes "Flower" for the first time:
		say "Mike: 'Mary is really into flowers. In my mind they are pretty, sure... But a lot of work has to go into taking care of them'[line break]";
	otherwise if the player's command includes "Flower":
		say "Mary covered the entire front yard with Jasmins.'[line break]";
	otherwise if the player's command includes "Mary" for the first time:
		say "You: ' How's Mary?'[line break]Mike: 'Oh, Mary is good. She's here too. She is in her room, taking care of some stuff. She should be done soon. She’ll be happy to know that you are here.'";
	otherwise if the player's command includes "Mary":
		say "Mike: 'Still as 'charming' as ever.'[line break]";
	otherwise if the player's command includes "City" for the first time:
		say "You: 'How do you like the city?'[line break]Mike: 'It’s very quiet. It only has three movie theaters of which, one is always being repaired and the other has chairs with nails sticking out of them. There is a wonderful grocery shop in 4 min walking distance from us. Most of what it offers, which isn’t that many, are locally grown. If you drive south you’ll get to the ocean. There are multiple small nurseries down the road too. We bought a orange tree from it half a year ago. Mary planted it in the garden. Every morning she checks on it for any sign of fruits. Keep it a secret but I think she actually named the tree.'";
	otherwise if the player's command includes "City":
		say "Mike: 'I don't think the city has changed since we last talked about it.'[line break]";
	otherwise if the player's command includes "Job" for the first time:
		say "You: 'Do you like your job?'[line break]Mike: 'It’s almost the exact thing that I was doing back then. It only takes me 20 to 30 min to get there as opposed to an hour. The neighborhood where our company is located is kindda sketchy though.'";
	otherwise if the player's command includes "Job":
		say "Mike: 'Boring...'[line break]";
	otherwise if the player's command includes "Work" for the first time:
		say "You: 'Do you like your job?'[line break]Mike: 'It’s almost the exact thing that I was doing back then. It only takes me 20 to 30 min to get there as opposed to an hour though. The neighborhood where our company is located is kindda sketchy though.'";
	otherwise if the player's command includes "Work":
		say "Mike: 'Boring...'[line break]";
	otherwise if the player's command includes "Argument" for the first time:
		say "You: 'Is everything ok between you guys?'[line break]Mike: 'Oh! So, we were that loud? It’s nothing serious… The usual hiccups in any relationships.'[line break]You hear footsteps entering the room. Mary starts speaking.[line break]Mary: 'What do you mean it’s not serious Michael?! How could it get any more serious?'[line break]You: 'It sure sounds more than a hiccup body' [line break]Mary: 'Why don’t you tell your friend what you've done and let he be the judge...' [line break]You: 'Nice, I get to be the marriage counselor!' [line break]You can sense the weight of Mary’s look on you. [line break]Mary: 'Can you stop being a wise ass for a second!' [line break]You: 'sorry!'";
		move mary to house;
		now happ is 1;
	otherwise if the player's command includes "Argument":
		say "Mike: 'We've already talked about it.'[line break]";
	otherwise if the player's command includes "Happened":
		if happ is 1:
			say "You: 'What happened?'[line break]Mike: 'Nothing! Really! I don’t know what caused her to act like this. She kept asking me whether I have anything to say to her or not. I’m as confused as you.'";
			say "Mary: 'It started couple of months ago. Mike was coming home late once a week. After a while I realized there is a pattern to it. Every Thursday he would be couple of hours late. Also, every other weekends, he would make up an excuse and would go out for half a day. What's worst is, on Thursdays he always smells of one particular perfume. It never changes. On weekends, the perfumes are mix and hard to distinguish.'[line break]Mike: 'Why were you smelling my clothes?!'";
			now AttackOn is 1;
			now knowWhy is 1;
		otherwise:
			say "Mike: 'What are you talking about'[line break]";
	otherwise:
		try rolling;
		if RandomNo is 1:
			say "Mike: 'I rather not talk about it right now.'";
		otherwise if RandomNo is 2:
			say "Mike: 'I'm not in the mood to talk about it.'";
		otherwise if RandomNo is 3:
			say "Mike: 'We'll talk about it later.'";
		otherwise if RandomNo is 4:
			say "Mike: 'I don't know.'";
		otherwise if RandomNo is 5:
			say "Mike: 'I have to think about it.'";
		otherwise if RandomNo is 6:
			say "Mike: 'We'll talk about it at a better time.'";
		otherwise if RandomNo is 7:
			say "Mike: 'Now is not a good time.'";


Before asking Mike about something:
	if knowWhy is not 0:
		try rolling;
		if RandomNo is 1:
			say "Mike: 'Not now.'";
		otherwise if RandomNo is 2:
			say "Mike: 'Now is not the time.'";
		otherwise if RandomNo is 3:
			say "Mike: 'REALLY? NOW?'";
		otherwise if RandomNo is 4:
			say "Mike: 'We're in the middle of something.'";
		otherwise if RandomNo is 5:
			say "Mike: 'HELLO! can't you see we're busy right now?'";
		otherwise if RandomNo is 6:
			say "Mike:  'Your question is irrelevant right now'";
		otherwise if RandomNo is 7:
			say "Mike: Seriously?";
		stop the action;
		
[*********************************ASK MARY********************************]
Instead of asking Mary about something:
	if the player's command includes "happened":
		say "You: 'What’s wrong?'[line break]Mary: 'It started couple of months ago. Mike was coming home late once a week. after a while I realized there is a pattern to it. Every Thursday he would be couple of hours late. Also, every other weekends, he would make up an excuse and would go out for half a day. What's worst is, on Thursdays he always smells of one particular perfume. It never changes. On weekends, the perfumes are mix and hard to distinguish.' [line break]Mike: 'Why were you smelling my clothes?!'";
		now AttackOn is 1;
		now knowWhy is 1;
	otherwise if the player's command includes "package":
		if Mary has the package:
			say "What are you talking about?";
		otherwise:
			if packageOp is 1:
				say "You: 'Mary, what are these papers?'[line break]Mary: 'Sorry, I forgot about your condition. These are pictures of Mike being intimate with different ladies.'"; 
				now AttackOn is 1;
			otherwise:
				say "Mary: 'Open it. You’ll see.'";
	otherwise if the player's command includes "papers":
		if Mary has the package:
			say "What are you talking about?";
		otherwise:
			if packageOp is 1:
				say "You: 'Mary, what are these papers?'[line break]Mary: 'Sorry, I forgot about your condition. These are pictures of Mike being intimate with different ladies.'"; 
				now AttackOn is 1;
			otherwise:
				say "Mary: 'What papers?'";
	otherwise:
		try rolling;
		if RandomNo is 1:
			say "Mary: 'I rather not talk about it right now.'";
		otherwise if RandomNo is 2:
			say "Mary: 'I'm not in the mood to talk about it.'";
		otherwise if RandomNo is 3:
			say "Mary: 'We'll talk about it later.'";
		otherwise if RandomNo is 4:
			say "Mary: 'I don't know.'";
		otherwise if RandomNo is 5:
			say "Mary: 'I have to think about it.'";
		otherwise if RandomNo is 6:
			say "Mary:  'We'll talk about it at a better time.'";
		otherwise if RandomNo is 7:
			say "Mary: 'Now is not a good time.'";
					
Before asking mary about something:
	if knowWhy is not 0:
		if knowWhy is not 1:
			if the player's command includes "package":
				say "Mary: 'What else do you wanna know?'";
			otherwise if the player's command includes "papers":
				say "Mary: 'What else do you wanna know?'";
			otherwise:
				try rolling;
				if RandomNo is 1:
					say "Mary: 'Not now.'";
				otherwise if RandomNo is 2:
					say "Mary: 'Now is not the time.'";
				otherwise if RandomNo is 3:
					say "Mary: 'REALLY? NOW?'";
				otherwise if RandomNo is 4:
					say "Mary: 'We're in the middle of something.'";
				otherwise if RandomNo is 5:
					say "Mary: 'HELLO! can't you see we're busy right now?'";
				otherwise if RandomNo is 6:
					say "Mary:  'Your question is irrelevant right now'";
				otherwise if RandomNo is 7:
					say "Mary: Seriously?";
			stop the action;
			
[*********************************ATTACK MIKE********************************]
Instead of attacking Mike:
	if knowWhy is 0:
		say "You can't do that!";
	otherwise if knowWhy is 1: 
		if packageOp is 1:
			say "You: 'Mike, what are these?'[line break]Mike: 'These 'intimate' photos consist of me dancing with some other ladies. Why would you have these photos Mary?! Were you spying on me?'[line break]Mary: ''LADIES'?! They are whores! And to answer your question Mike, YES. I hired someone to follow you.'";
			now knowWhy is 2;
			now AttackOn is 1;
		otherwise if packageOp is 0:
			say "You: 'I was prepared to defend you no matter what she threw at me. But, I don’t really know what to say to this Mike. Care to give us some explanations?' [line break]Mike: 'Mary, I’m telling you it’s not what you think. I don’t even know where you got these weird ideas. I don’t want to hear it anymore.' [line break]Mike stands up. The living room is painfully silent. Mary is holding her tears. She looks at you.[line break]Mary: 'let me show you something.'[paragraph break]";
			say "Mary leaves her chair and walks to her room. Then immediately comes back while carrying something with herself. She puts a package in front of you.";
			move package to House;
	otherwise if knowWhy is 2:
		say "You: ‘First perfumes and now these photos. In my eyes, you were always the faithful type Mike. I wouldn’t believe such a thing even I would have seen it with my own two eyes. Why?’[line break]Mary: ‘Yes Mike, I’d like to know WHY too.’[line break]Mike: ‘I’m not appreciating how you guys are treating me right now. As if I’m a convicted criminal.’[line break]Mary: ‘If we are treating you that way, is because you are acting like one Mike. What is the reason behind all these secretive behaviors?’[line break]Mike: ‘Fine, jeez. Let me explain then. Yes, I am in those photos and I’ve been dancing with other ladies. But it’s all because I’ve been taking a dance classes.’";
		now knowWhy is 3;
		now AttackOn is 1;
	otherwise if knowWhy is 3:
		say "You: ‘But why so secretive Mike? What are you? An obscurantist?’[line break]Mike: ‘No, I wasn’t trying to hide it… I mean I was, but for good reasons.’[line break]Mary: ‘For what good reasons?’[line break]Mike: ‘To surprise you… On our anniversary. I’ve been taking dance classes and practicing with a group on weekends. The daisy fragrance that you smelled on my clothes is my instructor’s perfume.’[line break]Mary: ‘I’m sorry Mike. I didn’t know.’[line break]Mike: ‘It’s alright. At least now I can practice my dance moves with you too.’";
		now knowWhy is 4;

			
[*********************************DEFEND MIKE********************************]
Instead of defending Mike:
	if knowWhy is 0:
		say "You can't do that!";
	otherwise if knowWhy is 1: 
		if packageOp is 1:
			say "You: ‘Mary, can you describe exactly what's in these pictures?’[line break]Mary: ‘They are picture of Mike dancing with other women.’[line break]Mike: ‘So, what? What are you trying to say Mary?! And while we're at it, care to explain where you got these from?’[line break]Mary: ‘You know damn well what I’m trying to say Mike. The photos are from a friend of mine who promised me to uncover the truth behind whatever you are hiding.’[line break]You: ‘To uncover the truth…? Mary, don’t you think you are overreacting a bit?’[line break]Mary: ‘Sometimes you have to go the extra mile to protect what is dear to you.’";
			now knowWhy is 2;
			now AttackOn is 1;
		otherwise if packageOp is 0:
			say "You: 'Mary, I’m not sure that proves anything. It could be the perfume of a coworker who happens to share elevator with Mike on Thursdays and it only happens on Thursdays because for whatever reason, Mike leaves work later on that day.' [line break]Mary: 'of course you would side with him. You are his college friend after all.'[paragraph break]";
			say "Mary leaves her chair and walks to her room. Then immediately comes back while carrying something with herself. She puts a package in front of you.";
			move package to House;
	otherwise if knowWhy is 2:
		say "You: ‘Mary, instead of having someone spy on Mike, shouldn’t you have talked to him first? Doesn’t he have the right to know before anyone else?’[line break]Mary: ‘Well I do have the right to know before anyone else too. If for any reason, Mike is bored of our relationship, shouldn’t I be the first one that he talks to?’[line break]Mike: ‘Wow, what’s going on here! Can you guys stop talking like I’m not here? And Mary, you do have a vivid and scary imaginations. Didn’t that friend of yours, Mr. detective, mention anything else other than the photos?’[line break]Mary: ‘No, he only sent me the photos and ask me whether I want him to continue the investigation or not. He didn’t find any other evidence of anything else.[line break]Mike: ‘Well because there is nothing to be found Mary! Let me confess what has been going on. I’ve been taking dance classes.’";
		now knowWhy is 3;
		now AttackOn is 1;
	otherwise if knowWhy is 3:
		say "You: ‘I knew it. The Mr. Meek Mike and adultery!’[line break]Mike: ‘You shut up!’[line break]You: ‘But why hide it?’[line break]Mike: ‘Well, it was supposed to be a surprise.’[line break]You: ‘Well it sure was.’[line break]Mary: ‘What do you mean, SURPRISE?!’[line break]Mike: ‘For our anniversary. I’ve planned a small party. I talked to your dad and he told me that you like Waltz, Tango and Salsa. Every Thursday, I was practicing Waltz and Tango. The perfume that you smelled was from my instructor. Every other weekend, there is a social club gathering in town. I’ve been participating and practicing Salsa. I don’t have a fixed partner and I’m practicing with whoever’s available; hence the mixed perfumes.’[line break]Mary: ‘Oh, Mike. I am so sorry. I’m so stupid. What have I been thinking?!’[line break]Mike: ‘Let me help you Mary. You WEREN’T THINKING at all!’[line break]Mike finished his sentence with a reassuring smile.";
		now knowWhy is 4;


			

[*********************************ATTACK MARY********************************]
Instead of attacking Mary:
	if knowWhy is 0:
		say "You can't do that!";
	otherwise if knowWhy is 1: 
		if packageOp is 1:
			say "You: 'Mary, what are these photos exactly? How did you get a hold of these photos? I’m gonna go out on a limb and say Mike didn’t provide them. At least not volunteeringly.'[line break]Mary: ‘They are pictures of him dancing with other women.’[line break]Mike: 'What have you done Mary?'[line break]Mary: 'What have ‘I’ done?! Really?! Is this all you can say after everything that's happened? What HAVE I DONE?! I consulted with a private investigator and he accepted my case. These are the photos that he's been taking since few months ago.'[line break]You: ‘A private investigator?! Mary I think you’ve seen too many TV dramas.’";
			now knowWhy is 2;
			now AttackOn is 1;
		otherwise if packageOp is 0:
			say "You: 'I’m not sure what the result of our talk will be Mary. But, don’t you think sniffing Mike’s clothes was going a step too far?!' [line break]Mary: 'of course you would side with him. You are his college friend after all.'[paragraph break]";
			say "Mary leaves her chair and walks to her room. Then immediately comes back while carrying something with herself. She puts a package in front of you.";
			move package to House;
	otherwise if knowWhy is 2:
		say "You: ‘Mary, you went through all the trouble of hiring an investigator. Have you ever considered asking Mike directly? Aren’t you guys husband and wife? Don’t you think talking with Mike would have given you the answer that you were looking for faster than any detective in the world?’[line break]Mary: ‘I… I don’t know.’[line break]Mike: ‘OK. This is clearly getting waaay out of hand. Let me explain what’s going on’[line break]Mary holds her breath.[line break]Mike: ‘The pictures are true. But that is literally all there is to it.’[line break]Mary: ‘What do you mean?’[line break]Mike: ‘Hmmm… How should I put it… Couple of months ago, I made a decision. I’ve enrolled in a ballroom dancing class.’";
		now knowWhy is 3;
		now AttackOn is 1;
	otherwise if knowWhy is 3:
		say "You: ‘Well, Mary, how do you feel now that you find out you hired a detective only to discover your unfaithful husband was secretly taking dance classes without letting you know?!’[line break]Mary: ‘Dance classes?! Really? That’s all there is to it Mike?’[line break]Mike: ‘Yes, I told you.’[line break]Mary: ‘But, why didn’t you tell me about it?’[line break]Mike: ‘Because it supposed to be a freaking surprise. On our anniversary.’[line break]Mary: ‘I’m really sorry Mike. I’m feeling really stupid right now.’[line break]Mike: ‘Well you SHOULD Mary. But don’t worry too much about it. There is a silverlining to it. As it turned out, I’m a very slow learner and Ms. Arlene, the one who you smelled her daisy perfume, doesn’t have any other openings available for private students. I’d appreciate it if you could practice with me. Our anniversary is approaching fast and I invited our parents. There is too much on the line here.’[line break]Mary: ‘Gladly Mike.’";
		now knowWhy is 4;



[*********************************DEFEND MARY********************************]
Instead of defending Mary:
	if knowWhy is 0:
		say "You can't do that!";
	otherwise if knowWhy is 1: 
		if packageOp is 1:
			say "You: ‘Mike, can you explain the content of these photos?’[line break]Mike: ‘These photos show me dancing with other people. I don’t know why Mary is getting so worked up about these. Also, I’m curious to know how she got these?’[line break]Mary: ‘Can you stop treating me like a fool Mike? And for God’s sake stop acting so matter-of-factly about it. It’s hurting me seeing how indifferent you’ve become. The photos are coming from a reliable source. An investigator who was hired by me when I first noticed your abnormal behavior.’";
			now knowWhy is 2;
			now AttackOn is 1;
		otherwise if packageOp is 0:
			say "You: 'Come on Mike! It’s not like she had to go out of her way to smell your clothes. You guys are still living together, right?!' [line break]Mike: 'Mary, I’m telling you it’s not what you think. I don’t even know where you got these weird ideas. I don’t want to hear it anymore.' [line break]Mike stands up. The living room is painfully silence. Mary is holding her tears. She looks at you.[line break]Mary: 'let me show you something'[paragraph break]";
			say "Mary leaves her chair and walks to her room. Then immediately comes back while carrying something with herself. She puts a package in front of you.";
			move package to House;
	otherwise if knowWhy is 2:
		say "You: ‘Mike, she has every right to be concern.’’[line break]Mike: ‘But to go as far as hiring someone to follow me? Why couldn’t she asked me directly?’[line break]Mary: ‘I’m sorry… But… But I was afraid.'[line break]Mike: ‘AFRAID?! Of me?’’[line break]Mary: ‘No, Mike. Not of you. Of what I might have heard… Or worse, what you might not have told me.’’[line break]Mike: ‘I’m sorry Mary.’";
		now knowWhy is 3;
		now AttackOn is 1;
	otherwise if knowWhy is 3:
		say "You: ‘Well I guess Mary’s friend wasn’t too far off with those photos. So, Mr. Baryshnikov, why so secret? I don’t think Mary would be as bothered by it as she is now if she knew what was going on’[line break]Mike: ‘Because I didn’t want her to find out’[line break]Mary: ‘Why not Mike?’[line break]Mike: ‘Because of you Mary. It supposed to be a surprise for you. The picture I had in mind was slightly different than what is happening now. I imagined everyone in a party are talking and having fun. Suddenly, the dance floor becomes empty and The Blue Danube starts. I’ll walk toward you, elegantly. Stop in front of you, bowing graciously and offering my right hand. Your face will be a mixture of shock and embarrassment, but you accept my hand and dance with me. Our parents, friends, and Ms. Arlene, the lady who the Thursdays’ perfume belongs to, nodding their heads in acknowledgment.’[line break]Mary: ‘Oh, Mike. I’m so sorry for ruining your surprise.’[line break]Mike: ‘It’s alright. I’m sure it wouldn’t go that smoothly anyways.’[line break]Mary: ‘I'll tell you what, we are going to rehearse the dance many times before that night and I promise to act as surprised and embarrassed as I can.’[line break]Mike: ‘That's so sweet of you’";
		now knowWhy is 4;


Before defending Mike:
	if AttackOn is 1:
		now DefendMikes is DefendMikes + 1;
		now AttackOn is 0;
	otherwise:
		say "You can't do that action at the moment!";
		stop the action;

Before attacking Mike:
	if AttackOn is 1:
		now AttackMikes is AttackMikes + 2;
		now AttackOn is 0;
	otherwise:
		say "You can't do that action at the moment!";
		stop the action;
	
Before defending Mary:
	if AttackOn is 1:
		now DefendMarys is DefendMarys + 1;
		now AttackOn is 0;
	otherwise:
		say "You can't do that action at the moment!";
		stop the action;
	
Before attacking Mary:
	if AttackOn is 1:
		now AttackMarys is AttackMarys + 2;
		now AttackOn is 0;
	otherwise:
		say "You can't do that action at the moment!";
		stop the action;
	
Before taking papers:
	say "You take out the papers inside the package.";
	now packageOp is 1;
	
Before examining papers:
	now packageOp is 1;
	
Understand "hint" as hinting.
hinting is an action applying to nothing.
carry out hinting:
	if AttackOn is 1:
		say "You can attack or defend either Mike or Mary.";
	if the player is in porch:
		say "knock, listen, look, south, north.[paragraph break]";
	otherwise:
		if knowWhy is 0:
			say "Ask Mike about: house, day, how he has been, life, weather, wife, mary, work, city, argument";
			if happ is 1:
				say ", what happened";
			say ", etc.[line break]";
		if mary is in house:
			if knowWhy is 0:
				say "Ask Mary about: what happened.[line break]";
			if knowWhy is 1:
				if package is in the house:
					say "Ask Mary about: package";
					if packageOp is 1:
						say ", papers";
					say ".[line break]";
			if knowWhy is 1:
				if player has the package:
					say "Ask Mary about: package";
					if packageOp is 1:
						say ", papers";
					say ".[line break]";
					

Every turn:
	if knowWhy is 4:
		now LoveMike is AttackMarys + DefendMikes;
		now LoveMary is AttackMikes + DefendMarys;
		if LoveMike is greater than LoveMary:
			End the story saying "[paragraph break]You: ‘Mary, hiring investigator, sniffing clothes, suspecting Mike. Please, don’t think I’m saying this because I am his college friend and I’m trying to defend him. But when and why did you lose your trust in Mike.’[line break]Mary: ‘I never did.’[line break]You: ‘Really?! Was hiring someone to follow him, out of your utmost trust in Mike, or smelling his clothes?’[line break]Mary: ‘I didn’t sniff out his clothes, I just happened to notice a scent of perfume from them.’[line break]You: ‘And the detective?’[line break]Mary: ‘I do care about what we have. What Mike and I have. And I was willing to go the extra miles to save it. Yes, I’m ashamed of what I did. I went too far, in a wrong direction. But, I’m not ashamed, even for a second, of how far I went.’[line break]Mike: ‘Thank you Mary.’[line break]Mary and You: ‘For what?’[line break]Mike: ‘For going the extra miles.’[paragraph break]";
		otherwise if LoveMary is greater than LoveMike:
			End the story saying "[paragraph break]You: ‘So, Mr. Romantic, do you try to surprise your wife often?’[line break]Mike: ‘No, it was the first time. I thought our anniversary should be something special.’[line break]You: ‘It sure was. Don’t worry, you need a lot of practice though. And please don’t act so suspicious next time when you are planning a surprise. Perfume on your clothes, patterned schedule changes, leaving the house on any day other than workdays, they are all red flags.’[line break]Mary: ‘Wait a minute, are you teaching him how to deceive me?’[line break]You: ‘No, Mary, I’m not. I’m teaching him how to surprise you. How he wants to use that knowledge is totally up to him.’[line break]Mike: ‘Don’t worry Mary. As we already established, keeping secrets is not my strong suit.’[paragraph break]";
		otherwise:
			if AttackMarys + AttackMikes is 8:
				End the story saying "[paragraph break]You: ‘Well, I’m glad that it all was a misunderstanding and everything turned out great. But, as a side note, let me tell you something. You two are ridiculous! Beyond compare.’[line break]Mike: ‘Why would you say that?’[line break]You: ‘Secretly taking dance classes to surprise your wife with your sudden flourished dance skills?! You’ve read too many Jane Austen's novels. And Mary?’[line break]Mary: ‘Yes?’[line break]You: ‘Hiring a detective? Smelling your husband’s clothes? Trying to force a confession out of Mike? You, my dear, need to learn how to communicate. How to tell Mike when something is bothering you. Of course, he needs to learn how to listen better.’[line break]Mary and Mike: ‘Yes, Dr. Phill.’'[paragraph break]";
			otherwise if DefendMarys + DefendMikes is 4:
				End the story saying "[paragraph break]You: ‘Wow, what a day it was. Guys, I’m really relieved that everything was a misunderstanding. You know both of you are dear friends of mine and nothing is more heartwrenching to me than seeing you both at each other’s throat. I understand sometimes it’s too hard to talk, sometimes you feel the space between you two is infinite and your voice is not reaching the other person. But you’ve got to get your act together if you want to survive. I don’t think it was the first time that such a conflict occurs and let me promise you something, out of experience, it won’t be the last time either. The only cure for this disease, and the only ointment for such injuries is talking. So, promise me to talk to each other when something is bothering you.’[line break]Mary: ‘Sure.’[line break]Mike: ‘I hope you don’t find it too insensitive of me, but since you lost your eyesight, it feels like you’ve become a philosopher!’[line break]You: ‘Mike, I was always a secret philosopher at heart.’[paragraph break]";
			otherwise:
				End the story saying "[paragraph break]You: ‘I don’t know what to say. Sure, it ended up being only a mix up, but it wouldn’t have been even that if you two weren’t acting the way you did. Just take a look back at what you two did in the past few months that lead to today and what you didn’t, which you could have, and it would completely prevent such a day to ever come.’[line break]Mike: ‘It was a misunderstanding and no one was at fault there.’[line break]You: ‘I disagree Mike. Yes, it was a misunderstanding but both of you were at fault.’[line break]Mary: ‘Sure, we could have handled it better. Sorry to drag you into it. Looking back it sure wouldn’t have ended up like this if we put more efforts into communicating better’[paragraph break]";
					
	
test ending with "listen / hint / knock / listen / ring the bell / ask mike about how he has been / ask mike about Mary / hint / ask mike about house / ask mike about mom / ask mike about the city / ask mike about child / ask mike about flower / ask mike about sex / ask mike about city / ask mary about what happened / ask mike about his car / ask mike about argument / hint /ask mike about what happened / hint / defend mike / ask mary about house / take package / ask mary about the package / x package / open package / take papers / x papers / ask mary about papers / defend mary / defend mary / defend mike";

Release along with cover art, the source text, an interpreter, and a website.