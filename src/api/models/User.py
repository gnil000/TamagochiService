from models.database import Base
from sqlalchemy import Column, String, DateTime, BigInteger

class User(Base):
    __tablename__ = "User"

    id = Column(BigInteger, primary_key=True, index=True, name="Id")
    password = Column(String, name="Password")
    name = Column(String, name="Name")
    created = Column(DateTime, name="Created")
    telegram_link = Column(String, name="TelegramLink")
    discord_link = Column(String, name="DiscordLink")
    vk_link = Column(String, name="VKLink")