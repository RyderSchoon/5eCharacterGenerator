delete from classes;
insert into classes (name,hit_die) values ('Barbarian', 'd12');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "strength save", false, (select class_id from classes where name = "Barbarian"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "constitution save", false, (select class_id from classes where name = "Barbarian"));
insert into classes (name,hit_die) values ('Bard', 'd8');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "dexterity save", false, (select class_id from classes where name = "Bard"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "charisma save", false, (select class_id from classes where name = "Bard"));
insert into classes (name,hit_die) values ('Cleric', 'd8');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "wisdom save", false, (select class_id from classes where name = "Cleric"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "charisma save", false, (select class_id from classes where name = "Cleric"));
insert into classes (name,hit_die) values ('Druid', 'd8');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "intelligence save", false, (select class_id from classes where name = "Druid"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "wisdom save", false, (select class_id from classes where name = "Druid"));
insert into classes (name,hit_die) values ('Fighter', 'd10');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "strength save", false, (select class_id from classes where name = "Fighter"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "constitution save", false, (select class_id from classes where name = "Fighter"));
insert into classes (name,hit_die) values ('Monk', 'd8');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "dexterity save", false, (select class_id from classes where name = "Monk"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "strength save", false, (select class_id from classes where name = "Monk"));
insert into classes (name,hit_die) values ('Paladin', 'd10');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "wisdom save", false, (select class_id from classes where name = "Paladin"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "charisma save", false, (select class_id from classes where name = "Paladin"));
insert into classes (name,hit_die) values ('Ranger', 'd10');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "dexterity save", false, (select class_id from classes where name = "Ranger"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "strength save", false, (select class_id from classes where name = "Ranger"));
insert into classes (name,hit_die) values ('Rogue', 'd8');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "dexterity save", false, (select class_id from classes where name = "Rogue"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "intelligence save", false, (select class_id from classes where name = "Rogue"));
insert into classes (name,hit_die) values ('Sorcerer', 'd6');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "constitution save", false, (select class_id from classes where name = "Sorcerer"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "charisma save", false, (select class_id from classes where name = "Sorcerer"));
insert into classes (name,hit_die) values ('Warlock', 'd8');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "wisdom save", false, (select class_id from classes where name = "Warlock"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "charisma save", false, (select class_id from classes where name = "Warlock"));
insert into classes (name,hit_die) values ('Wizard', 'd6');
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "intelligence save", false, (select class_id from classes where name = "Wizard"));
	insert into proficiencies (source_type, proficiency_type, proficiency, is_expertise, source_id) 
		values("class", "save", "wisdom save", false, (select class_id from classes where name = "Wizard"));