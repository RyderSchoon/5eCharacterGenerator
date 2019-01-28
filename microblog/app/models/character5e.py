import random
from math import floor

from models.characterClass import CharacterClass


class Character5e:
    level = 1
    strength, dexterity, constitution, intelligence, wisdom, charisma = 0, 0, 0, 0, 0, 0
    stats = [strength, dexterity, constitution, intelligence, wisdom, charisma]
    strengthMod, dexterityMod, constitutionMod, intelligenceMod, wisdomMod, charismaMod = 0, 0, 0, 0, 0, 0
    strength_save, dexterity_save, constitution_save, intelligence_save, wisdom_save, charisma_save = 0, 0, 0, 0, 0, 0
    strength_save_proficiency, dexterity_save_proficiency, constitution_save_proficiency, \
        intelligence_save_proficiency, wisdom_save_proficiency, charisma_save_proficiency = False, False, False, \
                                                                                        False, False, False,
    save_proficiencies = [strength_save_proficiency, dexterity_save_proficiency, constitution_save_proficiency,
                          intelligence_save_proficiency, wisdom_save_proficiency, charisma_save_proficiency]
    acrobatics, animal_handling, arcana, athletics, deception, history, insight, intimidation, investigation, \
    medicine, nature, perception, performance, persuasion, religion, sleight_of_hand, stealth, survival = 0, 0, 0, \
                                                                                                          0, 0, 0, \
                                                                                                          0, 0, 0, \
                                                                                                          0, 0, 0, \
                                                                                                          0, 0, 0, \
                                                                                                          0, 0, 0

    skills = [acrobatics, animal_handling, arcana, athletics, deception, history, insight, intimidation, investigation,
              medicine, nature, perception, performance, persuasion, religion, sleight_of_hand, stealth, survival]
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

    def get_character(self):
        self.saving_throw_proficiencies = []
        self.class_levels = {}
        self.proficiencyBonus = floor(self.level / 4) + 2
        CharacterClass.set_class(self)
        print("proficiencies set!", self.saving_throw_proficiencies)
        self.get_stats()
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
        self.acrobatics = self.dexterityMod
        self.animal_handling = self.wisdomMod
        self.arcana = self.intelligenceMod
        self.athletics = self.strengthMod
        self.deception = self.charismaMod
        self.history = self.intelligenceMod
        self.insight = self.wisdomMod
        self.intimidation = self.charismaMod
        self.investigation = self.intelligenceMod
        self.medicine = self.wisdomMod
        self.nature = self.intelligenceMod
        self.perception = self.wisdomMod
        self.performance = self.charismaMod
        self.persuasion = self.charismaMod
        self.religion = self.intelligenceMod
        self.sleight_of_hand = self.dexterityMod
        self.stealth = self.dexterityMod
        self.survival = self.wisdomMod

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
