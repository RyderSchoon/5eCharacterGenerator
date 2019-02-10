import random


class NameService:
    @staticmethod
    def get_open_syllables():
        return ["a", "i", "u", "e", "o", "ka", "ki", "ku", "ke", "ko", "ga", "gi", "gu", "ge", "go", "sa", "shi", "si",
                 "su", "se", "so", "za", "zi", "zu", "ze", "zo", "ta", "ti", "tu", "te", "to", "tsu", "da", "di", "du",
                 "de", "do", "dzu", "ma", "mi", "mu", "me", "mo", "na", "ni", "nu", "ne", "no", "ha", "hi", "hu", "he",
                 "ho", "ba", "bi", "bu", "be", "bo", "pa", "pi", "pu", "pe", "po", "wa", "wi", "wu", "we", "wo",
                 "ra", "ri", "ru", "re", "ro", "ya", "yi", "yu", "ye", "yo", "chi", "ja", "ji", "ju", "je", "jo"]

    @staticmethod
    def get_closed_syllables():
        return ["b", "bb", "c", "ck", "d", "f", "ff", "g", "h", "j", "k", "l", "ll", "m", "n", "nt", "p", "r", "rb",
                "rd", "rn", "s", "ss", "st", "t", "tt", "tch", "v", "w", "x", "z", "zz"]

    @staticmethod
    def generate_name():
        num_syllables = random.randint(2, 5)
        open_syllables = NameService.get_open_syllables()
        closed_syllables = NameService.get_closed_syllables()
        first_name = ''
        last_was_open_syllable = False
        for i in range(num_syllables):
            if last_was_open_syllable:
                if random.getrandbits(1):
                    first_name += closed_syllables[random.randint(0, len(closed_syllables)-1)]
                    last_was_open_syllable = False
                else:
                    first_name += open_syllables[random.randint(0, len(open_syllables)-1)]
                    last_was_open_syllable = True
            else:
                first_name += open_syllables[random.randint(0, len(open_syllables)-1)]
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
