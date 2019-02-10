import random

from models.background import Background
from models.stat_improvement import StatImprovement
from services.statImprovementService import StatImprovementService


class BackgroundService:

    @staticmethod
    def set_background(character):
        character_backgrounds = get_backgrounds(character.session)
        random_background = character_backgrounds[random.randint(0, len(character_backgrounds) - 1)]

        character.background = random_background.name

        for improvement in get_background_improvements(character.session, random_background):
            StatImprovementService.process_improvements(character, improvement)

        return character


def get_backgrounds(session):
    return session.query(Background).all()


def get_background_improvements(session, background):
    return session.query(StatImprovement).filter(
        StatImprovement.source_id == background.background_id and StatImprovement.source_type == 'background')
