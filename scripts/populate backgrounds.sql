delete from backgrounds;
delete from proficiencies where source_type = "background";
delete from background_traits;

insert into backgrounds (name) values ("Acolyte");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "religion", false, (select background_id from backgrounds where name = "Acolyte"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "sleight of hand", false, (select background_id from backgrounds where name = "Acolyte"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Acolyte"),"I idolize a particular hero of my faith, and constantly refer to that person's deeds and example.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Acolyte"),"I can find common ground between the fiercest enemies, empathizing with them and always working towards peace.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Acolyte"),"I see omens in every event and action. The gods try to speak to us, we just need to listen");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Acolyte"),"Nothing can shake my optimistic attitude.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Acolyte"),"I quote (or misquote) sacred texts and proverbs in almost every situation.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Acolyte"),"I am tolerant (or intolerant) of other faiths and respect (or condemn) the worship of other gods.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Acolyte"),"I've enjoyed fine food, drink, and high society among my temple's elite. Rough living grates on me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Acolyte"),"I've spent so long in the temple that I have little practical experience dealing with people in the outside world.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Acolyte"),"Tradition: The ancient traditions of worship and sacrifice must be preserved and upheld.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Acolyte"),"Charity: I always try to help those in need, no matter what the personal cost.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Acolyte"),"Change: We must help bring about the changes the gods are constantly working in the world. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Acolyte"),"Power: I hope to one day rise to the top of my faith's religious hierarchy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Acolyte"),"Faith: I trust that my deity will guide my actions, I have faith that if I work hard, things will go well. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Acolyte"),"Aspiration: I seek to prove myself worthy of my god's favor by matching my actions against his or her teachings.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Acolyte"),"I would die to recover an ancient relic of my faith that was lost long ago.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Acolyte"),"I will someday get revenge on the corrupt temple hierarchy who branded me a heretic.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Acolyte"),"I owe my life to the priest who took me in when my parents died.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Acolyte"),"Everything I do is for the common people.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Acolyte"),"I will do anything to protect the temple where I served.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Acolyte"),"I seek to preserve a sacred text that my enemies consider heretical and seek to destroy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Acolyte"),"I judge others harshly, and myself even more severely.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Acolyte"),"I put too much trust in those who wield power within my temple's hierarchy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Acolyte"),"My piety sometimes leads me to blindly trust those that profess faith in my god.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Acolyte"),"I am inflexible in my thinking.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Acolyte"),"I am suspicious of strangers and expect the worst of them.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Acolyte"),"Once I pick a goal, I become obsessed with it to the detriment of everything else in my life.");
        
insert into backgrounds (name) values ("Charlatan");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "deception", false, (select background_id from backgrounds where name = "Charlatan"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "sleight of hand", false, (select background_id from backgrounds where name = "Charlatan"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Charlatan"),"I fall in and out of love easily, and am always pursuing someone.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Charlatan"),"I have a joke for every occasion, especially occasions where humor is inappropriate.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Charlatan"),"Flattery is my preferred trick for getting what I want.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Charlatan"),"I'm a born gambler who can't resist taking a risk for a potential payoff.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Charlatan"),"I lie about almost everything, even when there's no good reason to.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Charlatan"),"Sarcasm and insults are my weapons of choice.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Charlatan"),"I keep multiple holy symbols on me and invoke whatever deity might come in useful at any given moment.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Charlatan"),"I pocket anything I see that might have some value.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Charlatan"),"Independence. I am a free spirit- no one tells me what to do. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Charlatan"),"Fairness. I never target people who can't afford to lose a few coins. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Charlatan"),"Charity. I distribute the money I acquire to the people who really need it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Charlatan"),"Creativity. I never run the same con twice.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Charlatan"),"Friendship. Material goods come and go. Bonds of friendship last forever.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Charlatan"),"Aspiration. I'm determined to make something of myself.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Charlatan"),"I fleeced the wrong person and must work to ensure that this individual never crosses paths with me or those I care about.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Charlatan"),"I owe everything to my mentor-a horrible person who's probably rotting in jail somewhere.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Charlatan"),"Somewhere out there, I have a child who doesn't know me. I'm making the world better for him or her.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Charlatan"),"I come from a noble family, and one day I'll reclaim my lands and title from those who stole them from me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Charlatan"),"A powerful person killed someone I love. Some day soon, I'll have my revenge.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Charlatan"),"I swindled and ruined a person who didn't deserve it. I seek to atone for my misdeeds but might never be able to forgive myself.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Charlatan"),"I can't resist a pretty face.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Charlatan"),"I'm always in debt. I spend my ill-gotten gains on decadent luxuries faster than I bring them in.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Charlatan"),"I'm convinced that no one could ever fool me the way I fool others.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Charlatan"),"I'm too greedy for my own good. I can't resist taking a risk if there's money involved");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Charlatan"),"I can't resist swindling people who are more powerful than me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Charlatan"),"I hate to admit it and will hate myself for it, but I'll run and preserve my own hide if the going gets tough.");
        
insert into backgrounds (name) values ("Criminal");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "deception", false, (select background_id from backgrounds where name = "Criminal"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "stealth", false, (select background_id from backgrounds where name = "Criminal"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Criminal"),"I always have a plan for what to do when things go wrong.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Criminal"),"I am always calm, no matter what the situation. I never raise my voice or let my emotions control me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Criminal"),"The first thing I do in a new place is note the locations of everything valuable-or where such things could be hidden.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Criminal"),"I would rather make a new friend than a new enemy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Criminal"),"I am incredibly slow to trust. Those who seem the fairest often have the most to hide.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Criminal"),"I don't pay attention to the risks in a situation.Never tell me the odds.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Criminal"),"The best way to get me to do something is to tell me I can't do it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Criminal"),"I blow up at the slightest insult.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Criminal"),"Honor. I don't steal from others in the trade.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Criminal"),"Freedom. Chains are meant to be broken, as are those who would forge them.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Criminal"),"Charity. I steal from the wealthy so that I can help people in need. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Criminal"),"Greed. I will do whatever it takes to become wealthy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Criminal"),"People. I'm loyal to my friends, not to any ideals, and everyone else can take a trip down the Styx for all I care.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Criminal"),"Redemption. There's a spark of good in everyone.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Criminal"),"I'm trying to pay off an old debt I owe to a generous benefactor.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Criminal"),"My ill-gotten gains go to support my family.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Criminal"),"Something important was taken from me, and I aim to steal it back.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Criminal"),"I will become the greatest thief that ever lived.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Criminal"),"I'm guilty of a terrible crime. I hope I can redeem myself for it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Criminal"),"Someone I loved died because of a mistake I made. That will never happen again.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Criminal"),"When I see something valuable, I can't think about anything but how to steal it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Criminal"),"When faced with a choice between money and my friends, I usually choose the money.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Criminal"),"If there's a plan, I'll forget it. If I don't forget it, I'll ignore it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Criminal"),"I have a “tell” that reveals when I'm lying.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Criminal"),"I turn tail and run when things look bad.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Criminal"),"An innocent person is in prison for a crime that I committed. I'm okay with that.");
        
insert into backgrounds (name) values ("Entertainer");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "acrobatics", false, (select background_id from backgrounds where name = "Entertainer"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "performance", false, (select background_id from backgrounds where name = "Entertainer"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Entertainer"),"I know a story relevant to almost every situation.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Entertainer"),"Whenever I come to a new place, I collect local rumors and spread gossip.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Entertainer"),"I'm a hopeless romantic, always searching for that “special someone.”");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Entertainer"),"Nobody stays angry at me or around me for long, since I can defuse any amount of tension.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Entertainer"),"I love a good insult, even one directed at me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Entertainer"),"I get bitter if I'm not the center of attention.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Entertainer"),"I'll settle for nothing less than perfection.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Entertainer"),"I change my mood or my mind as quickly as I change key in a song.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Entertainer"),"Beauty. When I perform, I make the world better than it was.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Entertainer"),"Tradition. The stories, legends, and songs of the past must never be forgotten, for they teach us who we are.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Entertainer"),"Creativity. The world is in need of new ideas and bold action. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Entertainer"),"Greed. I'm only in it for the money and fame.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Entertainer"),"People. I like seeing the smiles on people's faces when I perform. That's all that matters.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Entertainer"),"Honesty. Art should reflect the soul; it should come from within and reveal who we really are. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Entertainer"),"My instrument is my most treasured possession, and it reminds me of someone I love.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Entertainer"),"Someone stole my precious instrument, and someday I'll get it back.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Entertainer"),"I want to be famous, whatever it takes.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Entertainer"),"I idolize a hero of the old tales and measure my deeds against that person's.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Entertainer"),"I will do anything to prove myself superior to my hated rival.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Entertainer"),"I would do anything for the other members of my old troupe.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Entertainer"),"I'll do anything to win fame and renown.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Entertainer"),"I'm a sucker for a pretty face.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Entertainer"),"A scandal prevents me from ever going home again. That kind of trouble seems to follow me around.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Entertainer"),"I once satirized a noble who still wants my head. It was a mistake that I will likely repeat.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Entertainer"),"I have trouble keeping my true feelings hidden. My sharp tongue lands me in trouble.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Entertainer"),"Despite my best efforts, I am unreliable to my friends.");
        
insert into backgrounds (name) values ("Folk Hero");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "animal handling", false, (select background_id from backgrounds where name = "Folk Hero"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "survival", false, (select background_id from backgrounds where name = "Folk Hero"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Folk Hero"),"I judge people by their actions, not their words.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Folk Hero"),"	If someone is in trouble, I'm always ready to lend help.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Folk Hero"),"When I set my mind to something, I follow through no matter what gets in my way.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Folk Hero"),"I have a strong sense of fair play and always try to find the most equitable solution to arguments.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Folk Hero"),"I'm confident in my own abilities and do what I can to instill confidence in others.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Folk Hero"),"Thinking is for other people. I prefer action.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Folk Hero"),"I misuse long words in an attempt to sound smarter.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Folk Hero"),"I get bored easily. When am I going to get on with my destiny?");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Folk Hero"),"Respect. People deserve to be treated with dignity and respect. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Folk Hero"),"Fairness. No one should get preferential treatment before the law, and no one is above the law.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Folk Hero"),"Freedom. Tyrants must not be allowed to oppress the people. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Folk Hero"),"Might. If I become strong, I can take what I want-what I deserve. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Folk Hero"),"Sincerity. There's no good in pretending to be something I'm not. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Folk Hero"),"Destiny. Nothing and no one can steer me away from my higher calling.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Folk Hero"),"I have a family, but I have no idea where they are. One day, I hope to see them again.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Folk Hero"),"I worked the land, I love the land, and I will protect the land.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Folk Hero"),"A proud noble once gave me a horrible beating, and I will take my revenge on any bully I encounter.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Folk Hero"),"My tools are symbols of my past life, and I carry them so that I will never forget my roots.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Folk Hero"),"I protect those who cannot protect themselves.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Folk Hero"),"I wish my childhood sweetheart had come with me to pursue my destiny.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Folk Hero"),"The tyrant who rules my land will stop at nothing to see me killed.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Folk Hero"),"I'm convinced of the significance of my destiny, and blind to my shortcomings and the risk of failure.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Folk Hero"),"The people who knew me when I was young know my shameful secret, so I can never go home again.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Folk Hero"),"I have a weakness for the vices of the city, especially hard drink.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Folk Hero"),"Secretly, I believe that things would be better if I were a tyrant lording over the land.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Folk Hero"),"I have trouble trusting in my allies.");
        
insert into backgrounds (name) values ("Gladiator");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "acrobatics", false, (select background_id from backgrounds where name = "Gladiator"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "performance", false, (select background_id from backgrounds where name = "Gladiator"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Gladiator"),"I know a story relevant to almost every situation.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Gladiator"),"Whenever I come to a new place, I collect local rumors and spread gossip.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Gladiator"),"I'm a hopeless romantic, always searching for that “special someone.”");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Gladiator"),"Nobody stays angry at me or around me for long, since I can defuse any amount of tension.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Gladiator"),"I love a good insult, even one directed at me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Gladiator"),"I get bitter if I'm not the center of attention.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Gladiator"),"I'll settle for nothing less than perfection.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Gladiator"),"I change my mood or my mind as quickly as I change key in a song.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Gladiator"),"Beauty. When I perform, I make the world better than it was.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Gladiator"),"Tradition. The stories, legends, and songs of the past must never be forgotten, for they teach us who we are.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Gladiator"),"Creativity. The world is in need of new ideas and bold action. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Gladiator"),"Greed. I'm only in it for the money and fame.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Gladiator"),"People. I like seeing the smiles on people's faces when I perform. That's all that matters.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Gladiator"),"Honesty. Art should reflect the soul; it should come from within and reveal who we really are. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Gladiator"),"My instrument is my most treasured possession, and it reminds me of someone I love.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Gladiator"),"Someone stole my precious instrument, and someday I'll get it back.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Gladiator"),"I want to be famous, whatever it takes.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Gladiator"),"I idolize a hero of the old tales and measure my deeds against that person's.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Gladiator"),"I will do anything to prove myself superior to my hated rival.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Gladiator"),"I would do anything for the other members of my old troupe.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Gladiator"),"I'll do anything to win fame and renown.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Gladiator"),"I'm a sucker for a pretty face.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Gladiator"),"A scandal prevents me from ever going home again. That kind of trouble seems to follow me around.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Gladiator"),"I once satirized a noble who still wants my head. It was a mistake that I will likely repeat.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Gladiator"),"I have trouble keeping my true feelings hidden. My sharp tongue lands me in trouble.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Gladiator"),"Despite my best efforts, I am unreliable to my friends.");
        
insert into backgrounds (name) values ("Guild Artisan");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "insight", false, (select background_id from backgrounds where name = "Guild Artisan"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "persuasion", false, (select background_id from backgrounds where name = "Guild Artisan"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Artisan"),"I believe that anything worth doing is worth doing right. I can't help it- I'm a perfectionist.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Artisan"),"I'm a snob who looks down on those who can't appreciate fine art.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Artisan"),"I always want to know how things work and what makes people tick.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Artisan"),"I'm full of witty aphorisms and have a proverb for every occasion.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Artisan"),"I'm rude to people who lack my commitment to hard work and fair play.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Artisan"),"I like to talk at length about my profession.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Artisan"),"I don't part with my money easily and will haggle tirelessly to get the best deal possible.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Artisan"),"I'm well known for my work, and I want to make sure everyone appreciates it. I'm always taken aback when people haven't heard of me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Artisan"),"Community. It is the duty of all civilized people to strengthen the bonds of community and the security of civilization.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Artisan"),"Generosity. My talents were given to me so that I could use them to benefit the world.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Artisan"),"Freedom. Everyone should be free to pursue his or her own livelihood.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Artisan"),"Greed. I'm only in it for the money.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Artisan"),"People. I'm committed to the people I care about, not to ideals. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Artisan"),"Aspiration. I work hard to be the best there is at my craft.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Artisan"),"The workshop where I learned my trade is the most important place in the world to me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Artisan"),"I created a great work for someone, and then found them unworthy to receive it. I'm still looking for someone worthy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Artisan"),"I owe my guild a great debt for forging me into the person I am today.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Artisan"),"I pursue wealth to secure someone's love.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Artisan"),"One day I will return to my guild and prove that I am the greatest artisan of them all.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Artisan"),"I will get revenge on the evil forces that destroyed my place of business and ruined my livelihood.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Artisan"),"I'll do anything to get my hands on something rare or priceless.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Artisan"),"I'm quick to assume that someone is trying to cheat me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Artisan"),"No one must ever learn that I once stole money from guild coffers.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Artisan"),"I'm never satisfied with what I have- I always want more.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Artisan"),"I would kill to acquire a noble title.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Artisan"),"I'm horribly jealous of anyone who can outshine my handiwork. Everywhere I go, I'm surrounded by rivals.");
        
insert into backgrounds (name) values ("Guild Merchant");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "insight", false, (select background_id from backgrounds where name = "Guild Merchant"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "persuasion", false, (select background_id from backgrounds where name = "Guild Merchant"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Merchant"),"I believe that anything worth doing is worth doing right. I can't help it- I'm a perfectionist.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Merchant"),"I'm a snob who looks down on those who can't appreciate fine art.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Merchant"),"I always want to know how things work and what makes people tick.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Merchant"),"I'm full of witty aphorisms and have a proverb for every occasion.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Merchant"),"I'm rude to people who lack my commitment to hard work and fair play.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Merchant"),"I like to talk at length about my profession.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Merchant"),"I don't part with my money easily and will haggle tirelessly to get the best deal possible.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Guild Merchant"),"I'm well known for my work, and I want to make sure everyone appreciates it. I'm always taken aback when people haven't heard of me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Merchant"),"Community. It is the duty of all civilized people to strengthen the bonds of community and the security of civilization.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Merchant"),"Generosity. My talents were given to me so that I could use them to benefit the world.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Merchant"),"Freedom. Everyone should be free to pursue his or her own livelihood.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Merchant"),"Greed. I'm only in it for the money.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Merchant"),"People. I'm committed to the people I care about, not to ideals. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Guild Merchant"),"Aspiration. I work hard to be the best there is at my craft.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Merchant"),"The workshop where I learned my trade is the most important place in the world to me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Merchant"),"I created a great work for someone, and then found them unworthy to receive it. I'm still looking for someone worthy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Merchant"),"I owe my guild a great debt for forging me into the person I am today.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Merchant"),"I pursue wealth to secure someone's love.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Merchant"),"One day I will return to my guild and prove that I am the greatest artisan of them all.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Guild Merchant"),"I will get revenge on the evil forces that destroyed my place of business and ruined my livelihood.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Merchant"),"I'll do anything to get my hands on something rare or priceless.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Merchant"),"I'm quick to assume that someone is trying to cheat me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Merchant"),"No one must ever learn that I once stole money from guild coffers.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Merchant"),"I'm never satisfied with what I have- I always want more.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Merchant"),"I would kill to acquire a noble title.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Guild Merchant"),"I'm horribly jealous of anyone who can outshine my handiwork. Everywhere I go, I'm surrounded by rivals.");
        
insert into backgrounds (name) values ("Hermit");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "medicine", false, (select background_id from backgrounds where name = "Hermit"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "religion", false, (select background_id from backgrounds where name = "Hermit"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Hermit"),"I've been isolated for so long that I rarely speak, preferring gestures and the occasional grunt.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Hermit"),"I am utterly serene, even in the face of disaster.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Hermit"),"The leader of my community had something wise to say on every topic, and I am eager to share that wisdom.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Hermit"),"I feel tremendous empathy for all who suffer.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Hermit"),"I'm oblivious to etiquette and social expectations.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Hermit"),"I connect everything that happens to me to a grand, cosmic plan.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Hermit"),"I often get lost in my own thoughts and contemplation, becoming oblivious to my surroundings.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Hermit"),"I am working on a grand philosophical theory and love sharing my ideas.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Hermit"),"Greater Good. My gifts are meant to be shared with all, not used for my own benefit.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Hermit"),"Logic. Emotions must not cloud our sense of what is right and true, or our logical thinking.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Hermit"),"Free Thinking. Inquiry and curiosity are the pillars of progress. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Hermit"),"Power. Solitude and contemplation are paths toward mystical or magical power.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Hermit"),"Live and Let Live. Meddling in the affairs of others only causes trouble.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Hermit"),"Self-Knowledge. If you know yourself, there's nothing left to know. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Hermit"),"Nothing is more important than the other members of my hermitage, order, or association.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Hermit"),"I entered seclusion to hide from the ones who might still be hunting me. I must someday confront them.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Hermit"),"I'm still seeking the enlightenment I pursued in my seclusion, and it still eludes me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Hermit"),"I entered seclusion because I loved someone I could not have.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Hermit"),"Should my discovery come to light, it could bring ruin to the world.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Hermit"),"My isolation gave me great insight into a great evil that only I can destroy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Hermit"),"Now that I've returned to the world, I enjoy its delights a little too much.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Hermit"),"I harbor dark, bloodthirsty thoughts that my isolation and meditation failed to quell.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Hermit"),"I am dogmatic in my thoughts and philosophy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Hermit"),"I let my need to win arguments overshadow friendships and harmony.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Hermit"),"I'd risk too much to uncover a lost bit of knowledge.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Hermit"),"I like keeping secrets and won't share them with anyone.");
        
insert into backgrounds (name) values ("Knight");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "history", false, (select background_id from backgrounds where name = "Knight"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "persuasion", false, (select background_id from backgrounds where name = "Knight"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Knight"),"My eloquent flattery makes everyone I talk to feel like the most wonderful and important person in the world.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Knight"),"The common folk love me for my kindness and generosity.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Knight"),"No one could doubt by looking at my regal bearing that I am a cut above the unwashed masses.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Knight"),"I take great pains to always look my best and follow the latest fashions.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Knight"),"I don't like to get my hands dirty, and I won't be caught dead in unsuitable accommodations.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Knight"),"Despite my noble birth, I do not place myself above other folk. We all have the same blood.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Knight"),"My favor, once lost, is lost forever.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Knight"),"If you do me an injury, I will crush you, ruin your name, and salt your fields.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Knight"),"Respect. Respect is due to me because of my position, but all people regardless of station deserve to be treated with dignity.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Knight"),"Responsibility. It is my duty to respect the authority of those above me, just as those below me must respect mine.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Knight"),"Independence. I must prove that I can handle myself without the coddling of my family.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Knight"),"Power. If I can attain more power, no one will tell me what to do. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Knight"),"Family. Blood runs thicker than water.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Knight"),"Noble Obligation. It is my duty to protect and care for the people beneath me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Knight"),"I will face any challenge to win the approval of my family.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Knight"),"My house's alliance with another noble family must be sustained at all costs.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Knight"),"Nothing is more important than the other members of my family.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Knight"),"I am in love with the heir of a family that my family despises.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Knight"),"My loyalty to my sovereign is unwavering.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Knight"),"The common folk must see me as a hero of the people.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Knight"),"I secretly believe that everyone is beneath me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Knight"),"I hide a truly scandalous secret that could ruin my family forever.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Knight"),"I too often hear veiled insults and threats in every word addressed to me, and I'm quick to anger.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Knight"),"I have an insatiable desire for carnal pleasures.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Knight"),"In fact, the world does revolve around me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Knight"),"By my words and actions, I often bring shame to my family.");
        
insert into backgrounds (name) values ("Noble");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "history", false, (select background_id from backgrounds where name = "Noble"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "persuasion", false, (select background_id from backgrounds where name = "Noble"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Noble"),"My eloquent flattery makes everyone I talk to feel like the most wonderful and important person in the world.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Noble"),"The common folk love me for my kindness and generosity.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Noble"),"No one could doubt by looking at my regal bearing that I am a cut above the unwashed masses.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Noble"),"I take great pains to always look my best and follow the latest fashions.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Noble"),"I don't like to get my hands dirty, and I won't be caught dead in unsuitable accommodations.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Noble"),"Despite my noble birth, I do not place myself above other folk. We all have the same blood.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Noble"),"My favor, once lost, is lost forever.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Noble"),"If you do me an injury, I will crush you, ruin your name, and salt your fields.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Noble"),"Respect. Respect is due to me because of my position, but all people regardless of station deserve to be treated with dignity.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Noble"),"Responsibility. It is my duty to respect the authority of those above me, just as those below me must respect mine.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Noble"),"Independence. I must prove that I can handle myself without the coddling of my family.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Noble"),"Power. If I can attain more power, no one will tell me what to do. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Noble"),"Family. Blood runs thicker than water.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Noble"),"Noble Obligation. It is my duty to protect and care for the people beneath me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Noble"),"I will face any challenge to win the approval of my family.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Noble"),"My house's alliance with another noble family must be sustained at all costs.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Noble"),"Nothing is more important than the other members of my family.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Noble"),"I am in love with the heir of a family that my family despises.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Noble"),"My loyalty to my sovereign is unwavering.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Noble"),"The common folk must see me as a hero of the people.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Noble"),"I secretly believe that everyone is beneath me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Noble"),"I hide a truly scandalous secret that could ruin my family forever.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Noble"),"I too often hear veiled insults and threats in every word addressed to me, and I'm quick to anger.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Noble"),"I have an insatiable desire for carnal pleasures.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Noble"),"In fact, the world does revolve around me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Noble"),"By my words and actions, I often bring shame to my family.");
        
insert into backgrounds (name) values ("Outlander");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "athletics", false, (select background_id from backgrounds where name = "Outlander"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "survival", false, (select background_id from backgrounds where name = "Outlander"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Outlander"),"I'm driven by a wanderlust that led me away from home.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Outlander"),"I watch over my friends as if they were a litter of newborn pups.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Outlander"),"I once ran twenty-five miles without stopping to warn to my clan of an approaching orc horde. I'd do it again if I had to.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Outlander"),"I have a lesson for every situation, drawn from observing nature.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Outlander"),"I place no stock in wealthy or well-mannered folk. Money and manners won't save you from a hungry owlbear.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Outlander"),"I'm always picking things up, absently fiddling with them, and sometimes accidentally breaking them.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Outlander"),"I feel far more comfortable around animals than people.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Outlander"),"I was, in fact, raised by wolves.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Outlander"),"Change. Life is like the seasons, in constant change, and we must change with it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Outlander"),"Greater Good. It is each person's responsibility to make the most happiness for the whole tribe.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Outlander"),"Honor. If I dishonor myself, I dishonor my whole clan.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Outlander"),"Might. The strongest are meant to rule.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Outlander"),"Nature. The natural world is more important than all the constructs of civilization.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Outlander"),"Glory. I must earn glory in battle, for myself and my clan.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Outlander"),"My family, clan, or tribe is the most important thing in my life, even when they are far from me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Outlander"),"An injury to the unspoiled wilderness of my home is an injury to me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Outlander"),"I will bring terrible wrath down on the evildoers who destroyed my homeland.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Outlander"),"I am the last of my tribe, and it is up to me to ensure their names enter legend.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Outlander"),"I suffer awful visions of a coming disaster and will do anything to prevent it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Outlander"),"It is my duty to provide children to sustain my tribe.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Outlander"),"I am too enamored of ale, wine, and other intoxicants.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Outlander"),"There's no room for caution in a life lived to the fullest.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Outlander"),"I remember every insult I've received and nurse a silent resentment toward anyone who's ever wronged me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Outlander"),"I am slow to trust members of other races, tribes, and societies.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Outlander"),"Violence is my answer to almost any challenge.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Outlander"),"Don't expect me to save those who can't save themselves. It is nature's way that the strong thrive and the weak perish.");
        
insert into backgrounds (name) values ("Pirate");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "athletics", false, (select background_id from backgrounds where name = "Pirate"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "perception", false, (select background_id from backgrounds where name = "Pirate"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Pirate"),"My friends know they can rely on me, no matter what.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Pirate"),"I work hard so that I can play hard when the work is done.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Pirate"),"I enjoy sailing into new ports and making new friends over a flagon of ale.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Pirate"),"I stretch the truth for the sake of a good story.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Pirate"),"To me, a tavern brawl is a nice way to get to know a new city.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Pirate"),"I never pass up a friendly wager.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Pirate"),"My language is as foul as an otyugh nest.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Pirate"),"I like a job well done, especially if I can convince someone else to do it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Pirate"),"Respect. The thing that keeps a ship together is mutual respect between captain and crew.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Pirate"),"Fairness. We all do the work, so we all share in the rewards. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Pirate"),"Freedom. The sea is freedom-the freedom to go anywhere and do anything.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Pirate"),"Mastery. I'm a predator, and the other ships on the sea are my prey. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Pirate"),"People. I'm committed to my crewmates, not to ideals.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Pirate"),"Aspiration. Someday I'll own my own ship and chart my own destiny. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Pirate"),"I'm loyal to my captain first, everything else second.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Pirate"),"The ship is most important-crewmates and captains come and go");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Pirate"),"I'll always remember my first ship.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Pirate"),"In a harbor town, I have a paramour whose eyes nearly stole me from the sea.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Pirate"),"I was cheated out of my fair share of the profits, and I want to get my due.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Pirate"),"Ruthless pirates murdered my captain and crewmates, plundered our ship, and left me to die. Vengeance will be mine.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Pirate"),"I follow orders, even if I think they're wrong.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Pirate"),"I'll say anything to avoid having to do extra work.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Pirate"),"Once someone questions my courage, I never back down no matter how dangerous the situation.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Pirate"),"Once I start drinking, it's hard for me to stop.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Pirate"),"I can't help but pocket loose coins and other trinkets I come across.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Pirate"),"My pride will probably lead to my destruction.");
        
insert into backgrounds (name) values ("Sage");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "arcana", false, (select background_id from backgrounds where name = "Sage"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "history", false, (select background_id from backgrounds where name = "Sage"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sage"),"I use polysyllabic words that convey the impression of great erudition.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sage"),"I've read every book in the world's greatest libraries-or I like to boast that I have.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sage"),"I'm used to helping out those who aren't as smart as I am, and I patiently explain anything and everything to others.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sage"),"There's nothing I like more than a good mystery.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sage"),"I'm willing to listen to every side of an argument before I make my own judgment.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sage"),"I . . . speak . . . slowly . . . when talking . . . to idiots, . . . which . . . almost . . . everyone . . . is . . . compared . . . to me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sage"),"I am horribly, horribly awkward in social situations.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sage"),"I'm convinced that people are always trying to steal my secrets.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sage"),"Knowledge. The path to power and self-improvement is through knowledge.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sage"),"Beauty. What is beautiful points us beyond itself toward what is true. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sage"),"Logic. Emotions must not cloud our logical thinking.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sage"),"No Limits. Nothing should fetter the infinite possibility inherent in all existence.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sage"),"Power. Knowledge is the path to power and domination.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sage"),"Self-Improvement. The goal of a life of study is the betterment of oneself.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sage"),"It is my duty to protect my students.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sage"),"I have an ancient text that holds terrible secrets that must not fall into the wrong hands.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sage"),"I work to preserve a library, university, scriptorium, or monastery.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sage"),"My life's work is a series of tomes related to a specific field of lore.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sage"),"I've been searching my whole life for the answer to a certain question.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sage"),"I sold my soul for knowledge. I hope to do great deeds and win it back.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sage"),"I am easily distracted by the promise of information.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sage"),"Most people scream and run when they see a demon. I stop and take notes on its anatomy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sage"),"Unlocking an ancient mystery is worth the price of a civilization.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sage"),"I overlook obvious solutions in favor of complicated ones.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sage"),"I speak without really thinking through my words, invariably insulting others.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sage"),"I can't keep a secret to save my life, or anyone else's.");
        
insert into backgrounds (name) values ("Sailor");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "athletics", false, (select background_id from backgrounds where name = "Sailor"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "perception", false, (select background_id from backgrounds where name = "Sailor"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sailor"),"My friends know they can rely on me, no matter what.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sailor"),"I work hard so that I can play hard when the work is done.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sailor"),"I enjoy sailing into new ports and making new friends over a flagon of ale.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sailor"),"I stretch the truth for the sake of a good story.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sailor"),"To me, a tavern brawl is a nice way to get to know a new city.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sailor"),"I never pass up a friendly wager.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sailor"),"My language is as foul as an otyugh nest.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Sailor"),"I like a job well done, especially if I can convince someone else to do it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sailor"),"Respect. The thing that keeps a ship together is mutual respect between captain and crew.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sailor"),"Fairness. We all do the work, so we all share in the rewards. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sailor"),"Freedom. The sea is freedom-the freedom to go anywhere and do anything.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sailor"),"Mastery. I'm a predator, and the other ships on the sea are my prey. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sailor"),"People. I'm committed to my crewmates, not to ideals.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Sailor"),"Aspiration. Someday I'll own my own ship and chart my own destiny. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sailor"),"I'm loyal to my captain first, everything else second.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sailor"),"The ship is most important-crewmates and captains come and go");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sailor"),"I'll always remember my first ship.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sailor"),"In a harbor town, I have a paramour whose eyes nearly stole me from the sea.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sailor"),"I was cheated out of my fair share of the profits, and I want to get my due.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Sailor"),"Ruthless Sailors murdered my captain and crewmates, plundered our ship, and left me to die. Vengeance will be mine.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sailor"),"I follow orders, even if I think they're wrong.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sailor"),"I'll say anything to avoid having to do extra work.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sailor"),"Once someone questions my courage, I never back down no matter how dangerous the situation.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sailor"),"Once I start drinking, it's hard for me to stop.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sailor"),"I can't help but pocket loose coins and other trinkets I come across.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Sailor"),"My pride will probably lead to my destruction.");
        
insert into backgrounds (name) values ("Soldier");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "athletics", false, (select background_id from backgrounds where name = "Soldier"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "intimidation", false, (select background_id from backgrounds where name = "Soldier"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Soldier"),"I'm always polite and respectful.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Soldier"),"I'm haunted by memories of war. I can't get the images of violence out of my mind.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Soldier"),"I've lost too many friends, and I'm slow to make new ones.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Soldier"),"I'm full of inspiring and cautionary tales from my military experience relevant to almost every combat situation.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Soldier"),"I can stare down a hell hound without flinching.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Soldier"),"I enjoy being strong and like breaking things.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Soldier"),"I have a crude sense of humor.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Soldier"),"I face problems head-on. A simple, direct solution is the best path to success.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Soldier"),"Greater Good. Our lot is to lay down our lives in defense of others. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Soldier"),"Responsibility. I do what I must and obey just authority.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Soldier"),"Independence. When people follow orders blindly, they embrace a kind of tyranny.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Soldier"),"Might. In life as in war, the stronger force wins.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Soldier"),"Live and Let Live. Ideals aren't worth killing over or going to war for. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Soldier"),"Nation. My city, nation, or people are all that matter.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Soldier"),"I would still lay down my life for the people I served with.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Soldier"),"Someone saved my life on the battlefield. To this day, I will never leave a friend behind.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Soldier"),"My honor is my life.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Soldier"),"I'll never forget the crushing defeat my company suffered or the enemies who dealt it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Soldier"),"Those who fight beside me are those worth dying for.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Soldier"),"I fight for those who cannot fight for themselves.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Soldier"),"The monstrous enemy we faced in battle still leaves me quivering with fear.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Soldier"),"I have little respect for anyone who is not a proven warrior.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Soldier"),"I made a terrible mistake in battle that cost many lives-and I would do anything to keep that mistake secret.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Soldier"),"My hatred of my enemies is blind and unreasoning.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Soldier"),"I obey the law, even if the law causes misery.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Soldier"),"I'd rather eat my armor than admit when I'm wrong.");
        
insert into backgrounds (name) values ("Spy");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "deception", false, (select background_id from backgrounds where name = "Spy"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "stealth", false, (select background_id from backgrounds where name = "Spy"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Spy"),"I always have a plan for what to do when things go wrong.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Spy"),"I am always calm, no matter what the situation. I never raise my voice or let my emotions control me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Spy"),"The first thing I do in a new place is note the locations of everything valuable-or where such things could be hidden.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Spy"),"I would rather make a new friend than a new enemy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Spy"),"I am incredibly slow to trust. Those who seem the fairest often have the most to hide.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Spy"),"I don't pay attention to the risks in a situation.Never tell me the odds.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Spy"),"The best way to get me to do something is to tell me I can't do it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Spy"),"I blow up at the slightest insult.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Spy"),"Honor. I don't steal from others in the trade.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Spy"),"Freedom. Chains are meant to be broken, as are those who would forge them.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Spy"),"Charity. I steal from the wealthy so that I can help people in need. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Spy"),"Greed. I will do whatever it takes to become wealthy.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Spy"),"People. I'm loyal to my friends, not to any ideals, and everyone else can take a trip down the Styx for all I care.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Spy"),"Redemption. There's a spark of good in everyone.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Spy"),"I'm trying to pay off an old debt I owe to a generous benefactor.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Spy"),"My ill-gotten gains go to support my family.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Spy"),"Something important was taken from me, and I aim to steal it back.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Spy"),"I will become the greatest thief that ever lived.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Spy"),"I'm guilty of a terrible crime. I hope I can redeem myself for it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Spy"),"Someone I loved died because of a mistake I made. That will never happen again.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Spy"),"When I see something valuable, I can't think about anything but how to steal it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Spy"),"When faced with a choice between money and my friends, I usually choose the money.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Spy"),"If there's a plan, I'll forget it. If I don't forget it, I'll ignore it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Spy"),"I have a “tell” that reveals when I'm lying.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Spy"),"I turn tail and run when things look bad.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Spy"),"An innocent person is in prison for a crime that I committed. I'm okay with that.");
        
insert into backgrounds (name) values ("Urchin");
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "sleight of hand", false, (select background_id from backgrounds where name = "Urchin"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("background", "skill", "stealth", false, (select background_id from backgrounds where name = "Urchin"));
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Urchin"),"I hide scraps of food and trinkets away in my pockets.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Urchin"),"I ask a lot of questions.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Urchin"),"I like to squeeze into small places where no one else can get to me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Urchin"),"I sleep with my back to a wall or tree, with everything I own wrapped in a bundle in my arms.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Urchin"),"I eat like a pig and have bad manners.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Urchin"),"I think anyone who's nice to me is hiding evil intent.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Urchin"),"I don't like to bathe.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("personality trait",(select background_id from backgrounds where name = "Urchin"),"I bluntly say what other people are hinting at or hiding.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Urchin"),"Respect. All people, rich or poor, deserve respect.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Urchin"),"Community. We have to take care of each other, because no one else is going to do it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Urchin"),"Change. The low are lifted up, and the high and mighty are brought down. Change is the nature of things.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Urchin"),"Retribution. The rich need to be shown what life and death are like in the gutters.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Urchin"),"People. I help the people who help me—that's what keeps us alive. ");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("ideal",(select background_id from backgrounds where name = "Urchin"),"Aspiration. I'm going to prove that I'm worthy of a better life.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Urchin"),"My town or city is my home, and I'll fight to defend it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Urchin"),"I sponsor an orphanage to keep others from enduring what I was forced to endure.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Urchin"),"I owe my survival to another urchin who taught me to live on the streets.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Urchin"),"I owe a debt I can never repay to the person who took pity on me.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Urchin"),"I escaped my life of poverty by robbing an important person, and I'm wanted for it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("bond",(select background_id from backgrounds where name = "Urchin"),"No one else should have to endure the hardships I've been through.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Urchin"),"If I'm outnumbered, I will run away from a fight.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Urchin"),"Gold seems like a lot of money to me, and I'll do just about anything for more of it.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Urchin"),"I will never fully trust anyone other than myself.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Urchin"),"I'd rather kill someone in their sleep than fight fair.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Urchin"),"It's not stealing if I need it more than someone else.");
	insert into background_traits (trait_type, background_id, trait_text) 
		values("flaw",(select background_id from backgrounds where name = "Urchin"),"People who can't take care of themselves get what they deserve.");