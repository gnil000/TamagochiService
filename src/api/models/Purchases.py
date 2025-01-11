from models.database import Base
from sqlalchemy import Column, String, DateTime, BigInteger

class Purchases(Base):
    __tablename__ = "Purchases"

    id = Column(BigInteger, primary_key=True, index=True, name="Id")
    pet_id = Column(BigInteger, name="PetId")
    user_id = Column(BigInteger, name="UserId")
    asset_id = Column(BigInteger, name="AssetId")
    breed_id = Column(BigInteger, name="BreedId")
    date = Column(DateTime, name="Date")
