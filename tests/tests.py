from viewModels.characterModel import CharacterModel
from services.nameService import NameService


def test_generate_name():
    character = CharacterModel(None)

    NameService.set_generated_name(character)

    assert len(character.name) > 0
