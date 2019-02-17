from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

base = declarative_base()


class Race(base):
    __tablename__ = 'races'

    race_id = Column(Integer, primary_key=True)
    name = Column(String)
    max_age = Column(Integer)
    adulthood_age = Column(Integer)
    size_category = Column(String)
    move_speed_ft = Column(Integer)
