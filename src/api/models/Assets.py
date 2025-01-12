from models.Rarity import Rarity
from models.database import Base
from sqlalchemy import  Column, String, BigInteger, SmallInteger, ForeignKey, DECIMAL
from sqlalchemy.orm import relationship

class Assets(Base):
    __tablename__ = "Assets"

    id = Column(BigInteger, primary_key=True, index=True, name="Id")
    path = Column(String, name="Path")
    price = Column(DECIMAL, name="Price")
    rank = Column(SmallInteger, ForeignKey(Rarity.rank), name="Rank")
    type = Column(String, name="Type")
    title = Column(String, name="Title")

    rarity = relationship('Rarity', foreign_keys='Rarity.rank')
