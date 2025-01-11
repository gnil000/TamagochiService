from models.Rarity import Rarity
from models.Assets import Assets
from models.database import Base
from sqlalchemy import  Column, String, BigInteger, SmallInteger, ForeignKey, DECIMAL
from sqlalchemy.orm import relationship

class Breed(Base):
    __tablename__ = "Breed"

    id = Column(BigInteger, primary_key=True, index=True, name="Id")
    title = Column(String)
    description = Column(String)
    price = Column(DECIMAL, name="Price")
    asset_id = Column(BigInteger, ForeignKey(Assets.id), name="AssetId")
    rank = Column(SmallInteger, ForeignKey(Rarity.rank), name="Rank")

    rarity = relationship('Rarity', foreign_keys='Rarity.rank')
    asset = relationship('Assets', foreign_keys='Assets.id')
