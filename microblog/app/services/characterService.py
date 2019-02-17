import random
from math import floor

from services.backgroundService import BackgroundService
from services.classService import ClassService
from services.nameService import NameService
from services.raceService import RaceService


class CharacterService:

    @staticmethod
    def randomize_character(character):
        character.saving_throw_proficiencies = []
        character.class_levels = {}
        character.proficiencyBonus = floor(character.level / 4) + 2
        get_stats(character)
        RaceService.set_race(character)
        ClassService.set_class(character)
        BackgroundService.set_background(character)
        get_stat_mods(character)
        get_skill_bonuses(character)
        get_saves(character)
        get_hp(character)

        character.ac = 10 + character.dexterityMod
        character.initiative = character.dexterityMod
        character.total_hit_dice = character.level
        character.alignment = ''
        get_alignment(character)
        NameService.set_racial_name(character)
        character.class_name = ''
        character.gender =  'male' if random.getrandbits(1) else 'female'

        for (key, value) in sorted(character.class_levels.items()):
            character.class_name += str(value) + ' ' + key + ' '
        return character


def get_stats(character):
    character.strength = roll_4d6d1(character)
    character.dexterity = roll_4d6d1(character)
    character.constitution = roll_4d6d1(character)
    character.intelligence = roll_4d6d1(character)
    character.wisdom = roll_4d6d1(character)
    character.charisma = roll_4d6d1(character)


def roll_4d6d1(self):
    roll1 = random.randint(1, 6)
    roll2 = random.randint(1, 6)
    roll3 = random.randint(1, 6)
    roll4 = random.randint(1, 6)

    if roll1 == min(roll1, roll2, roll3, roll4):
        return roll2 + roll3 + roll4
    if roll2 == min(roll1, roll2, roll3, roll4):
        return roll1 + roll3 + roll4
    if roll3 == min(roll1, roll2, roll3, roll4):
        return roll1 + roll2 + roll4
    if roll4 == min(roll1, roll2, roll3, roll4):
        return roll1 + roll2 + roll3


def get_hp(character):
    if character.hit_dice_d6 > 0:
        character.hp = 6 + character.constitutionMod
    if character.hit_dice_d8 > 0:
        character.hp = 8 + character.constitutionMod
    if character.hit_dice_d10 > 0:
        character.hp = 10 + character.constitutionMod
    if character.hit_dice_d12 > 0:
        character.hp = 12 + character.constitutionMod


def get_stat_mods(self):
    self.strengthMod = floor((self.strength - 10) / 2)
    self.dexterityMod = floor((self.dexterity - 10) / 2)
    self.constitutionMod = floor((self.constitution - 10) / 2)
    self.intelligenceMod = floor((self.intelligence - 10) / 2)
    self.wisdomMod = floor((self.wisdom - 10) / 2)
    self.charismaMod = floor((self.charisma - 10) / 2)


def get_skill_bonuses(self):
    self.acrobatics = self.dexterityMod + self.proficiencyBonus if self.acrobatics_proficiency \
        else self.dexterityMod
    self.animal_handling = self.wisdomMod + self.proficiencyBonus if self.animal_handling_proficiency \
        else self.wisdomMod
    self.arcana = self.intelligenceMod + self.proficiencyBonus if self.arcana_proficiency \
        else self.intelligenceMod
    self.athletics = self.strengthMod + self.proficiencyBonus if self.athletics_proficiency \
        else self.strengthMod
    self.deception = self.charismaMod + self.proficiencyBonus if self.deception_proficiency \
        else self.charismaMod
    self.history = self.intelligenceMod + self.proficiencyBonus if self.history_proficiency \
        else self.intelligenceMod
    self.insight = self.wisdomMod + self.proficiencyBonus if self.insight_proficiency \
        else self.wisdomMod
    self.intimidation = self.charismaMod + self.proficiencyBonus if self.intimidation_proficiency \
        else self.charismaMod
    self.investigation = self.intelligenceMod + self.proficiencyBonus if self.investigation_proficiency \
        else self.intelligenceMod
    self.medicine = self.wisdomMod + self.proficiencyBonus if self.medicine_proficiency \
        else self.wisdomMod
    self.nature = self.intelligenceMod + self.proficiencyBonus if self.nature_proficiency \
        else self.intelligenceMod
    self.perception = self.wisdomMod + self.proficiencyBonus if self.perception_proficiency \
        else self.wisdomMod
    self.performance = self.charismaMod + self.proficiencyBonus if self.performance_proficiency \
        else self.charismaMod
    self.persuasion = self.charismaMod + self.proficiencyBonus if self.persuasion_proficiency \
        else self.charismaMod
    self.religion = self.intelligenceMod
    self.religion = self.intelligenceMod + self.proficiencyBonus if self.religion_proficiency \
        else self.intelligenceMod
    self.sleight_of_hand = self.dexterityMod
    self.sleight_of_hand = self.dexterityMod + self.proficiencyBonus if self.sleight_of_hand_proficiency \
        else self.dexterityMod
    self.stealth = self.dexterityMod
    self.stealth = self.dexterityMod + self.proficiencyBonus if self.stealth_proficiency \
        else self.dexterityMod
    self.survival = self.wisdomMod
    self.survival = self.wisdomMod + self.proficiencyBonus if self.survival_proficiency \
        else self.wisdomMod


def get_alignment(self):
    alignments = ['Lawful Good', 'Neutral Good', 'Chaotic Good',
                  'Lawful Neutral', 'True Neutral', 'Chaotic Neutral',
                  'Lawful Evil', 'Neutral Evil', 'Chaotic Evil']
    self.alignment = alignments[random.randint(0, 8)]


def get_saves(self):
    self.strength_save = self.strengthMod + self.proficiencyBonus if self.strength_save_proficiency \
        else self.strengthMod
    self.dexterity_save = self.dexterityMod + self.proficiencyBonus if self.dexterity_save_proficiency \
        else self.dexterityMod
    self.constitution_save = self.constitutionMod + self.proficiencyBonus if self.constitution_save_proficiency \
        else self.constitutionMod
    self.intelligence_save = self.intelligenceMod + self.proficiencyBonus if self.intelligence_save_proficiency \
        else self.intelligenceMod
    self.wisdom_save = self.wisdomMod + self.proficiencyBonus if self.wisdom_save_proficiency \
        else self.wisdomMod
    self.charisma_save = self.charismaMod + self.proficiencyBonus if self.charisma_save_proficiency \
        else self.charismaMod
