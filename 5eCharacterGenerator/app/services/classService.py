import random

from dataModels.characterClass import CharacterClass
from dataModels.proficiency import Proficiency
from services.proficiencyService import ProficiencyService


class ClassService:

    @staticmethod
    def set_class(character):
        character_classes = get_classes(character)
        random_class = character_classes[random.randint(0, len(character_classes)-1)]

        if random_class.name in character.class_levels:
            character.class_levels[random_class.name] = character.class_levels[random_class.name] + 1
        else:
            character.class_levels[random_class.name] = 1

        if random_class.hit_die == 'd6':
            character.hit_dice_d6 += 1
        if random_class.hit_die == 'd8':
            character.hit_dice_d8 += 1
        if random_class.hit_die == 'd10':
            character.hit_dice_d10 += 1
        if random_class.hit_die == 'd12':
            character.hit_dice_d12 += 1

        for proficiency in get_save_proficiencies(character, random_class):
            ProficiencyService.process_proficiencies(character, proficiency)

        return character


def get_classes(character):
    return character.session.query(CharacterClass).all()


def get_save_proficiencies(character, character_class):
    return character.session.query(Proficiency)\
        .filter(Proficiency.source_id == character_class.class_id)\
        .filter(Proficiency.source_type == 'class').all()
