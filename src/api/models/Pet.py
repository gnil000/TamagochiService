from models.database import Base
from models.Apperance import Apperance
from models.Breed import Breed
from models.Family import Family
from sqlalchemy import  Column, Integer, String, DateTime, Boolean, BigInteger, SmallInteger, ForeignKey
from sqlalchemy.orm import relationship

class Pet(Base):
    __tablename__ = "Pet"

    id = Column(BigInteger, primary_key=True, index=True, name="Id")
    name = Column(String, name="Name")
    created = Column(DateTime, name="Created")
    last_mood = Column(SmallInteger, name="LastMood")
    is_sick = Column(Boolean, name="IsSick")
    family_id = Column(BigInteger, ForeignKey(Family.id), name="FamilyId")
    apperance_id = Column(BigInteger, ForeignKey(Apperance.id), name="ApperanceId")
    health = Column(SmallInteger, name="Health")
    hungry = Column(SmallInteger, name="Hungry")
    breed_id = Column(SmallInteger, ForeignKey(Breed.id), name="BreedId")

    family = relationship('Family', foreign_keys='Family.id')
    apperance = relationship('Apperance', foreign_keys='Apperance.id')
    breed = relationship('Breed', foreign_keys='Breed.id')