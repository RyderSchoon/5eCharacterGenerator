from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

base = declarative_base()


class BackgroundTrait(base):
    __tablename__ = 'background_traits'

    background_id = Column(Integer, primary_key=True)
    trait_type = Column(String, primary_key=True)
    trait_text = Column(String, primary_key=True)
