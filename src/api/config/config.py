from pydantic_settings import BaseSettings
from pathlib import Path

class DatabaseSettings(BaseSettings):
    database_url: str

    class Config:
        env_file = Path(__file__).parents[2] / ".env"

databaseSettings = DatabaseSettings()