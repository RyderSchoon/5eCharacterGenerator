import random

from dataModels.name import Name


class NameService:

    @staticmethod
    def set_racial_name(character):
        character.name = get_racial_name(character)

    @staticmethod
    def set_generated_name(character):
        character.name = generate_name()


def get_racial_name(character):
    name = ''
    first_names = get_first_names(character)
    print('got', len(first_names), 'first names')
    if len(first_names) > 0:
        name += first_names[random.randint(0, len(first_names) - 1)].name
        print('name:', name)
    last_names = get_last_names(character)
    print('got', len(last_names), 'last names')
    if len(last_names) > 0:
        name += ' ' + last_names[random.randint(0, len(last_names) - 1)].name
    return name


def get_first_names(character):
    racial_frst_names = character.session.query(Name).filter(
        Name.name_type == 'first').filter(
        Name.race_id == character.race.race_id)
    gendered = racial_frst_names.filter(
        Name.gender == character.gender)
    agender = racial_frst_names.filter(
        Name.gender == 'any')
    return gendered.all() + agender.all()


def get_last_names(character):
    racial_frst_names = character.session.query(Name).filter(
        Name.name_type == 'last').filter(
        Name.race_id == character.race.race_id)
    gendered = racial_frst_names.filter(
        Name.gender == character.gender)
    agender = racial_frst_names.filter(
        Name.gender == 'any')
    return gendered.all() + agender.all()


def generate_name():
    num_syllables = random.randint(2, 5)
    open_syllables = get_open_syllables()
    closed_syllables = get_closed_syllables()
    first_name = ''
    last_was_open_syllable = False
    for i in range(num_syllables):
        if last_was_open_syllable:
            if random.getrandbits(1):
                first_name += closed_syllables[random.randint(0, len(closed_syllables) - 1)]
                last_was_open_syllable = False
            else:
                first_name += open_syllables[random.randint(0, len(open_syllables) - 1)]
                last_was_open_syllable = True
        else:
            first_name += open_syllables[random.randint(0, len(open_syllables) - 1)]
            last_was_open_syllable = True

    last_name = ''
    num_syllables = random.randint(2, 5)
    last_was_open_syllable = False
    if random.getrandbits(1):
        for i in range(num_syllables):
            if last_was_open_syllable:
                if random.getrandbits(1):
                    last_name += closed_syllables[random.randint(0, len(closed_syllables) - 1)]
                    last_was_open_syllable = False
                else:
                    last_name += open_syllables[random.randint(0, len(open_syllables) - 1)]
                    last_was_open_syllable = True
            else:
                last_name += open_syllables[random.randint(0, len(open_syllables) - 1)]
                last_was_open_syllable = True
        return first_name.capitalize() + ' ' + last_name.capitalize()
    else:
        return first_name.capitalize()


def get_open_syllables():
    return ["a", "i", "u", "e", "o", "ka", "ki", "ku", "ke", "ko", "ga", "gi", "gu", "ge", "go", "sa", "shi", "si",
            "su", "se", "so", "za", "zi", "zu", "ze", "zo", "ta", "ti", "tu", "te", "to", "tsu", "da", "di", "du",
            "de", "do", "dzu", "ma", "mi", "mu", "me", "mo", "na", "ni", "nu", "ne", "no", "ha", "hi", "hu", "he",
            "ho", "ba", "bi", "bu", "be", "bo", "pa", "pi", "pu", "pe", "po", "wa", "wi", "wu", "we", "wo",
            "ra", "ri", "ru", "re", "ro", "ya", "yi", "yu", "ye", "yo", "chi", "ja", "ji", "ju", "je", "jo"]


def get_closed_syllables():
    return ["b", "bb", "c", "ck", "d", "f", "ff", "g", "h", "j", "k", "l", "ll", "m", "n", "nt", "p", "r", "rb",
            "rd", "rn", "s", "ss", "st", "t", "tt", "tch", "v", "w", "x", "z", "zz"]
