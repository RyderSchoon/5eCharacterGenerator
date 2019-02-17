from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

base = declarative_base()


class Background(base):
    __tablename__ = 'backgrounds'

    background_id = Column(Integer, primary_key=True)
    name = Column(String)
