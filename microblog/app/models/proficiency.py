from sqlalchemy import Column, Integer, String, Boolean
from sqlalchemy.ext.declarative import declarative_base

base = declarative_base()


class Proficiency(base):
    __tablename__ = 'proficiencies'

    source_id = Column(Integer, primary_key=True)
    source_type = Column(String, primary_key=True)
    proficiency_type = Column(String, primary_key=True)
    proficiency = Column(String, primary_key=True)
    is_expertise = Column(Boolean)
