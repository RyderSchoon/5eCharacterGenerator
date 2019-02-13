import random

from models.background import Background
from models.backgroundTrait import BackgroundTrait
from models.proficiency import Proficiency
from services.proficiencyService import ProficiencyService
from html import unescape


class BackgroundService:

    @staticmethod
    def set_background(character):
        character_backgrounds = get_backgrounds(character.session)
        random_background = character_backgrounds[random.randint(0, len(character_backgrounds) - 1)]

        character.background = random_background.name

        for proficiency in get_background_proficiencies(character.session, random_background):
            ProficiencyService.process_proficiencies(character, proficiency)

        personality_traits = get_personality_traits(character.session, random_background)
        character.personality_traits = unescape(personality_traits[random.randint(0, len(personality_traits) - 1)].trait_text)
        ideals = get_ideals(character.session, random_background)
        character.ideals = unescape(ideals[random.randint(0, len(ideals) - 1)].trait_text)
        bonds = get_bonds(character.session, random_background)
        character.bonds = unescape(bonds[random.randint(0, len(bonds) - 1)].trait_text)
        flaws = get_flaws(character.session, random_background)
        character.flaws = unescape(flaws[random.randint(0, len(flaws) - 1)].trait_text)

        return character


def get_backgrounds(session):
    return session.query(Background).all()


def get_background_proficiencies(session, background):
    return session.query(Proficiency).filter(
        Proficiency.source_id == background.background_id and Proficiency.source_type == 'background')


def get_personality_traits(session, background):
    return session.query(BackgroundTrait).filter(
        BackgroundTrait.background_id ==  background.background_id and BackgroundTrait.trait_type == 'personality trait').all()


def get_ideals(session, background):
    return session.query(BackgroundTrait).filter(
        BackgroundTrait.background_id == background.background_id and BackgroundTrait.trait_type == 'ideal').all()


def get_bonds(session, background):
    return session.query(BackgroundTrait).filter(
        BackgroundTrait.background_id == background.background_id and BackgroundTrait.trait_type == 'bond').all()


def get_flaws(session, background):
    return session.query(BackgroundTrait).filter(
        BackgroundTrait.background_id == background.background_id and BackgroundTrait.trait_type == 'flaw').all()
