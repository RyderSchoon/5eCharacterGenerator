import random


class CharacterClass:
    class_name = ''
    hit_dice = ''
    saving_throws = []

    def __init__(self, class_name, hit_dice, saving_throws):
        self.class_name = class_name
        self.hit_dice = hit_dice
        self.saving_throws = saving_throws

    @staticmethod
    def get_classes():
        return [
            CharacterClass('Barbarian', 'd12', ['strength', 'constitution']),
            CharacterClass('Bard', 'd8', ['dexterity', 'charisma']),
            CharacterClass('Cleric', 'd8', ['wisdom', 'charisma']),
            CharacterClass('Druid', 'd8', ['intelligence', 'wisdom']),
            CharacterClass('Fighter', 'd10', ['strength', 'constitution']),
            CharacterClass('Monk', 'd8', ['dexterity', 'strength']),
            CharacterClass('Paladin', 'd10', ['wisdom', 'charisma']),
            CharacterClass('Ranger', 'd10', ['dexterity', 'strength']),
            CharacterClass('Rogue', 'd8', ['dexterity', 'intelligence']),
            CharacterClass('Sorcerer', 'd6', ['constitution', 'charisma']),
            CharacterClass('Warlock', 'd8', ['wisdom', 'charisma']),
            CharacterClass('Wizard', 'd6', ['intelligence', 'wisdom']),
        ]

    @staticmethod
    def set_class(character):
        character_classes = CharacterClass.get_classes()
        random_class = character_classes[random.randint(0, len(character_classes)-1)]
        if random_class.class_name in character.class_levels:
            character.class_levels[random_class.class_name] = character.class_levels[random_class.class_name] + 1
        else:
            character.class_levels[random_class.class_name] = 1

        if random_class.hit_dice == 'd6':
            character.hit_dice_d6 = character.hit_dice_d6 + 1
        if random_class.hit_dice == 'd8':
            character.hit_dice_d8 = character.hit_dice_d8 + 1
        if random_class.hit_dice == 'd10':
            character.hit_dice_d10 = character.hit_dice_d10 + 1
        if random_class.hit_dice == 'd12':
            character.hit_dice_d12 = character.hit_dice_d12 + 1

        if len(character.saving_throw_proficiencies) == 0:
            character.saving_throw_proficiencies.append(random_class.saving_throws[0])
            character.saving_throw_proficiencies.append(random_class.saving_throws[1])

        return character
