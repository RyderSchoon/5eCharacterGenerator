import random
from math import floor

from services.backgroundService import BackgroundService
from services.characterClass import CharacterClass
from services.nameService import NameService
from services.raceService import RaceService


class Character5e:
    session = None
    level = 1
    strength, dexterity, constitution, intelligence, wisdom, charisma = 0, 0, 0, 0, 0, 0
    strengthMod, dexterityMod, constitutionMod, intelligenceMod, wisdomMod, charismaMod = 0, 0, 0, 0, 0, 0
    strength_save, dexterity_save, constitution_save, intelligence_save, wisdom_save, charisma_save = 0, 0, 0, 0, 0, 0
    strength_save_proficiency, dexterity_save_proficiency, constitution_save_proficiency, \
    intelligence_save_proficiency, wisdom_save_proficiency, charisma_save_proficiency = False, False, False, \
                                                                                        False, False, False,
    strength_save_expertise, dexterity_save_expertise, constitution_save_expertise, \
    intelligence_save_expertise, wisdom_save_expertise, charisma_save_expertise = False, False, False, \
                                                                                  False, False, False,
    acrobatics, animal_handling, arcana, athletics, deception, history, insight, intimidation, investigation, \
    medicine, nature, perception, performance, persuasion, religion, sleight_of_hand, stealth, survival = 0, 0, 0, \
                                                                                                          0, 0, 0, \
                                                                                                          0, 0, 0, \
                                                                                                          0, 0, 0, \
                                                                                                          0, 0, 0, \
                                                                                                          0, 0, 0
    acrobatics_proficiency, animal_handling_proficiency, arcana_proficiency, athletics_proficiency, \
    deception_proficiency, history_proficiency, insight_proficiency, intimidation_proficiency, \
    investigation_proficiency, medicine_proficiency, nature_proficiency, perception_proficiency, \
    performance_proficiency, persuasion_proficiency, religion_proficiency, sleight_of_hand_proficiency, \
    stealth_proficiency, survival_proficiency = False, False, False, False, False, False, False, False, False, \
                                                False, False, False, False, False, False, False, False, False
    acrobatics_expertise, animal_handling_expertise, arcana_expertise, athletics_expertise, \
    deception_expertise, history_expertise, insight_expertise, intimidation_expertise, \
    investigation_expertise, medicine_expertise, nature_expertise, perception_expertise, \
    performance_expertise, persuasion_expertise, religion_expertise, sleight_of_hand_expertise, \
    stealth_expertise, survival_expertise = False, False, False, False, False, False, False, False, False, \
                                            False, False, False, False, False, False, False, False, False
    experience_required = [0, 300, 900, 2700, 6500, 14000, 23000, 34000, 48000, 64000, 85000, 100000, 120000, 140000,
                           165000, 195000, 225000, 265000, 305000, 335000, 335000]
    proficiencyBonus = 0
    initiative = 0
    class_levels = {}
    class_name = ''
    hit_dice_d6, hit_dice_d8, hit_dice_d10, hit_dice_d12 = 0, 0, 0, 0
    total_hit_dice = 0
    ac = 0
    saving_throw_proficiencies = []
    hp = 0
    alignment = ''
    name = ''
    background = ''
    race_name = ''
    age = 0
    move_speed_ft = 0
    personaility_traits, flaws, ideals, bonds = '', '', '', ''

    def __init__(self, session):
        self.session = session

    def get_character(self):

        self.saving_throw_proficiencies = []
        self.class_levels = {}
        self.proficiencyBonus = floor(self.level / 4) + 2
        self.get_stats()
        RaceService.set_race(self)
        CharacterClass.set_class(self)
        BackgroundService.set_background(self)
        self.get_stat_mods()
        self.get_skill_bonuses()
        self.set_proficiencies()
        self.get_saves()
        self.get_hp()

        self.ac = 10 + self.dexterityMod
        self.initiative = self.dexterityMod
        self.total_hit_dice = self.level
        self.alignment = ''
        self.get_alignment()
        self.name = NameService.generate_name()
        self.class_name = ''
        for (key, value) in sorted(self.class_levels.items()):
            self.class_name += str(value) + ' ' + key + ' '
        return self

    def get_stats(self):
        self.strength = Character5e.roll_4d6d1(self)
        self.dexterity = Character5e.roll_4d6d1(self)
        self.constitution = Character5e.roll_4d6d1(self)
        self.intelligence = Character5e.roll_4d6d1(self)
        self.wisdom = Character5e.roll_4d6d1(self)
        self.charisma = Character5e.roll_4d6d1(self)

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

    def set_proficiencies(self):
        for save in self.saving_throw_proficiencies:
            if save == 'strength':
                self.strength_save_proficiency = True
            if save == 'dexterity':
                self.dexterity_save_proficiency = True
            if save == 'constitution':
                self.constitution_save_proficiency = True
            if save == 'intelligence':
                self.intelligence_save_proficiency = True
            if save == 'wisdom':
                self.wisdom_save_proficiency = True
            if save == 'charisma':
                self.charisma_save_proficiency = True
        return self

    def get_hp(self):
        if self.hit_dice_d6 > 0:
            self.hp = 6 + self.constitutionMod
        if self.hit_dice_d8 > 0:
            self.hp = 8 + self.constitutionMod
        if self.hit_dice_d10 > 0:
            self.hp = 10 + self.constitutionMod
        if self.hit_dice_d12 > 0:
            self.hp = 12 + self.constitutionMod

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
