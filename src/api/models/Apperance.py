from models.Assets import Assets
from models.database import Base
from sqlalchemy import  Column, String, BigInteger, ForeignKey
from sqlalchemy.orm import relationship

class Apperance(Base):
    __tablename__ = "Apperance"

    id = Column(BigInteger, primary_key=True, index=True, name="Id")
    title = Column(String, name="Title")
    hat = Column(BigInteger, ForeignKey(Assets.id), name="Hat")
    neck = Column(BigInteger, ForeignKey(Assets.id), name="Neck")
    tob_body = Column(BigInteger, ForeignKey(Assets.id), name="TobBody")
    bottom_body = Column(BigInteger, ForeignKey(Assets.id), name="BottomBody")
    pants = Column(BigInteger, ForeignKey(Assets.id), name="Pants")
    shoes = Column(BigInteger, ForeignKey(Assets.id), name="Shoes")
    hands = Column(BigInteger, ForeignKey(Assets.id), name="Hands")
    wrist_left = Column(BigInteger, ForeignKey(Assets.id), name="WristLeft")
    wrist_right = Column(BigInteger, ForeignKey(Assets.id), name="WristRight")

    hat_asset = relationship("Assets", foreign_keys=[hat], backref="used_as_hat")
    neck_asset = relationship("Assets", foreign_keys=[neck], backref="used_as_neck")
    tob_body_asset = relationship("Assets", foreign_keys=[tob_body], backref="used_as_tob_body")
    bottom_body_asset = relationship("Assets", foreign_keys=[bottom_body], backref="used_as_bottom_body")
    pants_asset = relationship("Assets", foreign_keys=[pants], backref="used_as_pants")
    shoes_asset = relationship("Assets", foreign_keys=[shoes], backref="used_as_shoes")
    hands_asset = relationship("Assets", foreign_keys=[hands], backref="used_as_hands")
    wrist_left_asset = relationship("Assets", foreign_keys=[wrist_left], backref="used_as_wrist_left")
    wrist_right_asset = relationship("Assets", foreign_keys=[wrist_right], backref="used_as_wrist_right")