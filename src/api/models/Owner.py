from models.Roles import Roles
from models.Family import Family
from models.User import User
from models.database import Base
from sqlalchemy import Column, String, DateTime, BigInteger, Boolean, ForeignKey
from sqlalchemy.orm import relationship

class Owner(Base):
    __tablename__ = "Owner"

    id = Column(BigInteger, primary_key=True, index=True, name="Id")
    user_id = Column(BigInteger, ForeignKey(User.id), name="UserId")
    role_id = Column(BigInteger, ForeignKey(Roles.id), name="RoleId")
    family_id = Column(BigInteger, ForeignKey(Family.id), name="FamilyId")
    is_creator = Column(Boolean, name="IsCreator")

    user = relationship('User', foreign_keys='User.id')
    family = relationship('Family', foreign_keys='Family.id')
    role = relationship('Role', foreign_keys='Role.id')

