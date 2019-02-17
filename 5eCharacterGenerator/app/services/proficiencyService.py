class ProficiencyService:
    @staticmethod
    def process_proficiencies(character, proficiency):
        proficiency_name = proficiency.proficiency.lower()
        print('new proficiency:', proficiency_name, 'is expertise:', proficiency.is_expertise, ' from source:',
              proficiency.source_type)

        if proficiency_name == 'strength save':
            if not proficiency.is_expertise:
                character.strength_save_proficiency = True
            else:
                character.strength_save_expertise = True
            return character
        if proficiency_name == 'dexterity save':
            if not proficiency.is_expertise:
                character.dexterity_save_proficiency = True
            else:
                character.dexterity_save_expertise = True
            return character
        if proficiency_name == 'constitution save':
            if not proficiency.is_expertise:
                character.constitution_save_proficiency = True
            else:
                character.constitution_save_expertise = True
            return character
        if proficiency_name == 'intelligence save':
            if not proficiency.is_expertise:
                character.intelligence_save_proficiency = True
            else:
                character.intelligence_save_expertise = True
            return character
        if proficiency_name == 'wisdom save':
            if not proficiency.is_expertise:
                character.wisdom_save_proficiency = True
            else:
                character.wisdom_save_expertise = True
            return character
        if proficiency_name == 'charisma save':
            if not proficiency.is_expertise:
                character.charisma_save_proficiency = True
            else:
                character.charisma_save_expertise = True
            return character

        if proficiency_name == 'acrobatics':
            if not proficiency.is_expertise:
                character.acrobatics_proficiency = True
            else:
                character.acrobatics_expertise = True
            return character
        if proficiency_name == 'animal handling':
            if not proficiency.is_expertise:
                character.animal_handling_proficiency = True
            else:
                character.animal_handling_expertise = True
            return character
        if proficiency_name == 'arcana':
            if not proficiency.is_expertise:
                character.arcana_proficiency = True
            else:
                character.arcana_expertise = True
            return character
        if proficiency_name == 'athletics':
            if not proficiency.is_expertise:
                character.athletics_proficiency = True
            else:
                character.athletics_expertise = True
            return character
        if proficiency_name == 'deception':
            if not proficiency.is_expertise:
                character.deception_proficiency = True
            else:
                character.deception_expertise = True
            return character
        if proficiency_name == 'history':
            if not proficiency.is_expertise:
                character.history_proficiency = True
            else:
                character.history_expertise = True
            return character
        if proficiency_name == 'insight':
            if not proficiency.is_expertise:
                character.insight_proficiency = True
            else:
                character.insight_expertise = True
            return character
        if proficiency_name == 'intimidation':
            if not proficiency.is_expertise:
                character.intimidation_proficiency = True
            else:
                character.intimidation_expertise = True
            return character
        if proficiency_name == 'investigation':
            if not proficiency.is_expertise:
                character.investigation_proficiency = True
            else:
                character.investigation_expertise = True
            return character
        if proficiency_name == 'medicine':
            if not proficiency.is_expertise:
                character.medicine_proficiency = True
            else:
                character.medicine_expertise = True
            return character
        if proficiency_name == 'nature':
            if not proficiency.is_expertise:
                character.nature_proficiency = True
            else:
                character.nature_expertise = True
            return character
        if proficiency_name == 'perception':
            if not proficiency.is_expertise:
                character.perception_proficiency = True
            else:
                character.perception_expertise = True
            return character
        if proficiency_name == 'performance':
            if not proficiency.is_expertise:
                character.performance_proficiency = True
            else:
                character.performance_expertise = True
            return character
        if proficiency_name == 'persuasion':
            if not proficiency.is_expertise:
                character.persuasion_proficiency = True
            else:
                character.persuasion_expertise = True
            return character
        if proficiency_name == 'religion':
            if not proficiency.is_expertise:
                character.religion_proficiency = True
            else:
                character.religion_expertise = True
            return character
        if proficiency_name == 'sleight of hand':
            if not proficiency.is_expertise:
                character.sleight_of_hand_proficiency = True
            else:
                character.sleight_of_hand_expertise = True
            return character
        if proficiency_name == 'stealth':
            if not proficiency.is_expertise:
                character.stealth_proficiency = True
            else:
                character.stealth_expertise = True
            return character
        if proficiency_name == 'survival':
            if not proficiency.is_expertise:
                character.survival_proficiency = True
            else:
                character.survivalexpertise = True
            return character

        print('[ERROR] ProficiencyService.process_proficiencies, proficiency not found! proficiency:',
              proficiency_name)
        return character
