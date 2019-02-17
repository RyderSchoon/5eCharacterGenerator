from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

base = declarative_base()


class Name(base):
    __tablename__ = 'names'

    race_id = Column(Integer, primary_key=True)
    name = Column(String, primary_key=True)
    gender = Column(String, primary_key=True)
    name_type = Column(String, primary_key=True)
