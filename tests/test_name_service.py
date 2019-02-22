import os
import sys
import unittest.mock as mock

import sqlalchemy

myPath = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, myPath + '/../5eCharacterGenerator/app/')

from viewModels.characterModel import CharacterModel
from services.nameService import NameService
from dataModels.name import Name
from dataModels.race import Race


def test_generate_name():
    character = CharacterModel(None)

    NameService.set_generated_name(character)

    assert len(character.name) > 0


def test_racial_name():
    name_1 = Name()
    name_1.name = 'steve'
    name_2 = Name()
    name_2.name = 'stevenson'

    cheese_name = mock.Mock()
    cheese_name.side_effect = [[name_1], [name_2]]

    mock_db_session = mock.MagicMock(spec=sqlalchemy.orm.session.Session)
    mock_db_session.query().filter().filter().filter().all = cheese_name
    character = CharacterModel(mock_db_session)
    character.gender = 'any'
    character.race = Race()
    character.race.race_id = 1
    NameService.set_racial_name(character)

    assert character.name == name_1.name+' '+name_2.name
