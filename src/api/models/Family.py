from models.database import Base
from sqlalchemy import Column, String, DateTime, BigInteger

class Family(Base):
    __tablename__ = "Family"

    id = Column(BigInteger, primary_key=True, index=True, name="Id")
    title = Column(String, name="Title")
    description = Column(String, name="Description")
    created = Column(DateTime, name="Created")
