import random

from models.race import Race
from models.stat_improvement import StatImprovement
from services.statImprovementService import StatImprovementService


class RaceService:

    @staticmethod
    def set_race(character):
        races = get_races(character.session)

        random_race = races[random.randint(0, len(races) - 1)]

        character.race_name = random_race.name
        character.age = random.randint(random_race.adulthood_age, random_race.max_age)
        character.move_speed_ft = random_race.move_speed_ft

        stat_improvements = get_race_improvements(character.session, random_race)
        for improvement in stat_improvements:
            StatImprovementService.process_improvements(character, improvement)
        return character


def get_races(session):
    return session.query(Race).all()


def get_race_improvements(session, race):
    return session.query(StatImprovement).filter(
        StatImprovement.source_id == race.race_id and StatImprovement.source_type == 'racial')
