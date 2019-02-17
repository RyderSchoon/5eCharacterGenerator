

class CharacterModel:
    session = None
    name = ''

    def __init__(self, session):
        self.session = session

    # <editor-fold desc="core header" >
    level = 1
    experience_required = [0, 300, 900, 2700, 6500, 14000, 23000, 34000, 48000, 64000, 85000, 100000, 120000, 140000,
                           165000, 195000, 225000, 265000, 305000, 335000, 335000]
    class_levels = {}
    class_name = ''
    alignment = ''
    background = ''
    race = None
    # </editor-fold>

    # <editor-fold desc="core info" >
    # <editor-fold desc="stats" >
    strength, dexterity, constitution, intelligence, wisdom, charisma = 0, 0, 0, 0, 0, 0
    strengthMod, dexterityMod, constitutionMod, intelligenceMod, wisdomMod, charismaMod = 0, 0, 0, 0, 0, 0
    # </editor-fold>
    # <editor-fold desc="saves" >
    strength_save, dexterity_save, constitution_save, intelligence_save, wisdom_save, charisma_save = 0, 0, 0, 0, 0, 0
    strength_save_proficiency, dexterity_save_proficiency, constitution_save_proficiency, \
    intelligence_save_proficiency, wisdom_save_proficiency, charisma_save_proficiency = False, False, False, \
                                                                                        False, False, False,
    strength_save_expertise, dexterity_save_expertise, constitution_save_expertise, \
    intelligence_save_expertise, wisdom_save_expertise, charisma_save_expertise = False, False, False, \
                                                                                  False, False, False,
    # </editor-fold>
    # <editor-fold desc="skills" >
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
    # </editor-fold>

    proficiencyBonus = 0
    initiative = 0
    hit_dice_d6, hit_dice_d8, hit_dice_d10, hit_dice_d12 = 0, 0, 0, 0
    total_hit_dice = 0
    ac = 0
    saving_throw_proficiencies = []
    hp = 0
    move_speed_ft = 0
    personaility_traits, flaws, ideals, bonds = '', '', '', ''
    # </editor-fold>\

    # <editor-fold desc="bio header" >
    age = 0
    height = ''
    weight = 0
    eyes = ''
    skin = ''
    hair = '' '', '', ''
    gender = ''
    # </editor-fold>

    # <editor-fold desc="bio info" >
    # </editor-fold>

    # <editor-fold desc="spell header" >
    # </editor-fold>

    # <editor-fold desc="spell info" >
    # </editor-fold>
