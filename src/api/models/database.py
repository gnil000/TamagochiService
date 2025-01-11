from sqlalchemy import create_engine
from sqlalchemy.orm import DeclarativeBase
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from config import databaseSettings
#from models.Base import Base

engine = create_engine(databaseSettings.database_url)
session = sessionmaker(bind=engine)

class Base(DeclarativeBase): pass
#Base = declarative_base()

def create_db():
    Base.metadata.create_all(bind=engine)