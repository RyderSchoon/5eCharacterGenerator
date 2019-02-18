FROM python:3

WORKDIR /5eCharacterGenerator

RUN pip install flask sqlalchemy

CMD [ "python", "./microblog.py" ]