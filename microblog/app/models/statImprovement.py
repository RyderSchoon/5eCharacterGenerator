from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

base = declarative_base()


class StatImprovement(base):
    __tablename__ = 'stat_improvements'

    source_id = Column(Integer, primary_key=True)
    source_type = Column(String, primary_key=True)
    stat_improved = Column(String, primary_key=True)
    improvement_amount = Column(Integer)
