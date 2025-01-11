from models.database import create_db
from models.Apperance import Apperance
from models.Pet import Pet
from models.Assets import Assets
from models.Breed import Breed
from models.Family import Family
from models.Owner import Owner
from models.Purchases import Purchases
from models.Rarity import Rarity
from models.Roles import Roles
from models.User import User

def create_database():
    create_db()