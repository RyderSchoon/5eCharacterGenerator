Delete from races;
insert into races (name, max_age, adulthood_age, size_category, move_speed_ft) 
	values('Dragonborn',80,15, 'Medium', 30);
    insert into stat_improimprovement_amountvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Strength', 2, (select race_id from races where name= 'Dragonborn'));
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Charisma', 1, (select race_id from races where name= 'Dragonborn'));
insert into races (name, max_age, adulthood_age, size_category, move_speed_ft) 
	values('Dwarf',350,18, 'Medium', 25);
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Constitution', 2, (select race_id from races where name= 'Dwarf'));
insert into races (name, max_age, adulthood_age, size_category, move_speed_ft) 
	values('Elf',750,18, 'Medium', 30);
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Dexterity', 2, (select race_id from races where name= 'Elf'));
insert into races (name, max_age, adulthood_age, size_category, move_speed_ft) 
	values('Gnome',500,18, 'Small', 25);
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Intelligence', 2, (select race_id from races where name= 'Gnome'));
insert into races (name, max_age, adulthood_age, size_category, move_speed_ft) 
	values('Half-Elf',180,18, 'Medium', 30);
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Charisma', 2, (select race_id from races where name= 'Half-Elf'));
insert into races (name, max_age, adulthood_age, size_category, move_speed_ft) 
	values('Half-Orc',75,14, 'Medium', 30);
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Strength', 2, (select race_id from races where name= 'Half-Orc'));
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Constitution', 1, (select race_id from races where name= 'Half-Orc'));
insert into races (name, max_age, adulthood_age, size_category, move_speed_ft) 
	values('Halfling',150,18, 'Small', 25);
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Dexterity', 2, (select race_id from races where name= 'Halfling'));
insert into races (name, max_age, adulthood_age, size_category, move_speed_ft) 
	values('Human',80,18, 'Medium', 30);
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Strength', 1, (select race_id from races where name= 'Human'));
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Dexterity', 1, (select race_id from races where name= 'Human'));
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Constitution', 1, (select race_id from races where name= 'Human'));
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Intelligence', 1, (select race_id from races where name= 'Human'));
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Wisdom', 1, (select race_id from races where name= 'Human'));
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Charisma', 1, (select race_id from races where name= 'Human'));
insert into races (name, max_age, adulthood_age, size_category, move_speed_ft) 
	values('Tiefling',90,18, 'Medium', 30);
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Charisma', 2, (select race_id from races where name= 'Tiefling'));
    insert into stat_improvements(source_type, stat_improved, improvement_amount, source_id)
		values('racial', 'Intelligence', 1, (select race_id from races where name= 'Tiefling'));