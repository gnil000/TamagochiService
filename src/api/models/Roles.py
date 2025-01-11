from models.database import Base
from sqlalchemy import  Column, String, BigInteger, SmallInteger

class Roles(Base):
    __tablename__ = "Roles"

    id = Column(BigInteger, primary_key=True, index=True, name="Id")
    title = Column(String, name="Title")
    description = Column(String, name="Description")
    priority = Column(SmallInteger, name="Priority")