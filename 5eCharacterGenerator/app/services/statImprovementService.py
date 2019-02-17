class StatImprovementService:
    @staticmethod
    def process_improvements(character, improvement):
        stat_improved = improvement.stat_improved.lower()
        print('improving stat:', stat_improved, 'by', improvement.improvement_amount, ' from source:', improvement.source_type)

        if stat_improved == 'strength':
            character.strength += improvement.improvement_amount
            return character
        if stat_improved == 'dexterity':
            character.dexterity += improvement.improvement_amount
            return character
        if stat_improved == 'constitution':
            character.constitution += improvement.improvement_amount
            return character
        if stat_improved == 'intelligence':
            character.intelligence += improvement.improvement_amount
            return character
        if stat_improved == 'wisdom':
            character.wisdom += improvement.improvement_amount
            return character
        if stat_improved == 'charisma':
            character.charisma += improvement.improvement_amount
            return character
        if stat_improved == 'strength save':
            character.strength_save = character.strength_save + improvement.improvement_amount
            return character
        if stat_improved == 'dexterity save':
            character.dexterity_save = character.dexterity_save + improvement.improvement_amount
            return character
        if stat_improved == 'constitution save':
            character.constitution_save = character.constitution_save + improvement.improvement_amount
            return character
        if stat_improved == 'intelligence save':
            character.intelligence_save = character.intelligence_save + improvement.improvement_amount
            return character
        if stat_improved == 'wisdom save':
            character.wisdom_save = character.wisdom_save + improvement.improvement_amount
            return character
        if stat_improved == 'charisma save':
            character.charisma_save = character.charisma_save + improvement.improvement_amount
            return character
        if stat_improved == 'ac':
            character.strength_save = character.strength_save + improvement.improvement_amount
            return character
        if stat_improved == 'initiative':
            character.dexterity_save = character.dexterity_save + improvement.improvement_amount
            return character
        if stat_improved == 'move_speed':
            character.constitution_save = character.constitution_save + improvement.improvement_amount
            return character
        if stat_improved == 'hp':
            character.intelligence_save = character.intelligence_save + improvement.improvement_amount
            return character
        if stat_improved == 'acrobatics':
            character.acrobatics += improvement.improvement_amount
            return character
        if stat_improved == 'animal handling':
            character.animal_handling = character.animal_handling + improvement.improvement_amount
            return character
        if stat_improved == 'arcana':
            character.arcana += improvement.improvement_amount
            return character
        if stat_improved == 'athletics':
            character.athletics += improvement.improvement_amount
            return character
        if stat_improved == 'deception':
            character.deception += improvement.improvement_amount
            return character
        if stat_improved == 'history':
            character.history += improvement.improvement_amount
            return character
        if stat_improved == 'insight':
            character.insight += improvement.improvement_amount
            return character
        if stat_improved == 'intimidation':
            character.intimidation += improvement.improvement_amount
            return character
        if stat_improved == 'investigation':
            character.investigation += improvement.improvement_amount
            return character
        if stat_improved == 'medicine':
            character.medicine += improvement.improvement_amount
            return character
        if stat_improved == 'nature':
            character.nature += improvement.improvement_amount
            return character
        if stat_improved == 'perception':
            character.perception += improvement.improvement_amount
            return character
        if stat_improved == 'performance':
            character.performance += improvement.improvement_amount
            return character
        if stat_improved == 'persuasion':
            character.persuasion += improvement.improvement_amount
            return character
        if stat_improved == 'religion':
            character.religion += improvement.improvement_amount
            return character
        if stat_improved == 'sleight of hand':
            character.sleight_of_hand = character.sleight_of_hand + improvement.improvement_amount
            return character
        if stat_improved == 'stealth':
            character.stealth += improvement.improvement_amount
            return character
        if stat_improved == 'survival':
            character.survival += improvement.improvement_amount
            return character

        print('[ERROR] StatImprovementService.process_improvements, improved stat not found! stat:',
              stat_improved)
        return character
