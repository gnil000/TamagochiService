from models.database import Base
from sqlalchemy import  Column, String, SmallInteger

class Rarity(Base):
    __tablename__ = "Rarity"

    rank = Column(SmallInteger, primary_key=True, index=True, name="Rank")
    title = Column(String, name="Title")
    description = Column(String, name="Description")
    color = Column(String, name="Color")

