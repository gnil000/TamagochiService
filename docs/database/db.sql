-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://github.com/pgadmin-org/pgadmin4/issues/new/choose if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public."Apperance"
(
    "Id" bigserial NOT NULL,
    "Title" character varying COLLATE pg_catalog."default",
    "Hat" bigint,
    "Neck" bigint,
    "TobBody" bigint,
    "BottomBody" bigint,
    "Pants" bigint,
    "Shoes" bigint,
    "Hands" bigint,
    "WristLeft" bigint,
    "WristRight" bigint,
    CONSTRAINT "Apperance_pkey" PRIMARY KEY ("Id")
);

CREATE TABLE IF NOT EXISTS public."Assets"
(
    "Id" bigserial NOT NULL,
    "Path" character varying COLLATE pg_catalog."default",
    "Price" numeric,
    "Rank" smallint,
    "Type" character varying COLLATE pg_catalog."default",
    "Title" character varying COLLATE pg_catalog."default",
    CONSTRAINT "Assets_pkey" PRIMARY KEY ("Id")
);

CREATE TABLE IF NOT EXISTS public."Breed"
(
    "Id" bigserial NOT NULL,
    title character varying COLLATE pg_catalog."default",
    description character varying COLLATE pg_catalog."default",
    "Price" numeric,
    "AssetId" bigint,
    "Rank" smallint,
    CONSTRAINT "Breed_pkey" PRIMARY KEY ("Id")
);

CREATE TABLE IF NOT EXISTS public."Family"
(
    "Id" bigserial NOT NULL,
    "Title" character varying COLLATE pg_catalog."default",
    "Description" character varying COLLATE pg_catalog."default",
    "Created" timestamp without time zone,
    CONSTRAINT "Family_pkey" PRIMARY KEY ("Id")
);

CREATE TABLE IF NOT EXISTS public."Owner"
(
    "Id" bigserial NOT NULL,
    "UserId" bigint,
    "RoleId" bigint,
    "FamilyId" bigint,
    "IsCreator" boolean,
    CONSTRAINT "Owner_pkey" PRIMARY KEY ("Id")
);

CREATE TABLE IF NOT EXISTS public."Pet"
(
    "Id" bigserial NOT NULL,
    "Name" character varying COLLATE pg_catalog."default",
    "Created" timestamp without time zone,
    "LastMood" smallint,
    "IsSick" boolean,
    "FamilyId" bigint,
    "ApperanceId" bigint,
    "Health" smallint,
    "Hungry" smallint,
    "BreedId" smallint,
    CONSTRAINT "Pet_pkey" PRIMARY KEY ("Id")
);

CREATE TABLE IF NOT EXISTS public."Purchases"
(
    "Id" bigserial NOT NULL,
    "PetId" bigint,
    "UserId" bigint,
    "AssetId" bigint,
    "BreedId" bigint,
    "Date" timestamp without time zone,
    CONSTRAINT "Purchases_pkey" PRIMARY KEY ("Id")
);

CREATE TABLE IF NOT EXISTS public."Rarity"
(
    "Rank" smallserial NOT NULL,
    "Title" character varying COLLATE pg_catalog."default",
    "Description" character varying COLLATE pg_catalog."default",
    "Color" character varying COLLATE pg_catalog."default",
    CONSTRAINT "Rarity_pkey" PRIMARY KEY ("Rank")
);

CREATE TABLE IF NOT EXISTS public."Roles"
(
    "Id" bigserial NOT NULL,
    "Title" character varying COLLATE pg_catalog."default",
    "Description" character varying COLLATE pg_catalog."default",
    "Priority" smallint,
    CONSTRAINT "Roles_pkey" PRIMARY KEY ("Id")
);

CREATE TABLE IF NOT EXISTS public."User"
(
    "Id" bigserial NOT NULL,
    "Password" character varying COLLATE pg_catalog."default",
    "Name" character varying COLLATE pg_catalog."default",
    "Created" timestamp without time zone,
    "TelegramLink" character varying COLLATE pg_catalog."default",
    "DiscordLink" character varying COLLATE pg_catalog."default",
    "VKLink" character varying COLLATE pg_catalog."default",
    CONSTRAINT "User_pkey" PRIMARY KEY ("Id")
);

ALTER TABLE IF EXISTS public."Apperance"
    ADD CONSTRAINT "Apperance_BottomBody_fkey" FOREIGN KEY ("BottomBody")
    REFERENCES public."Assets" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Apperance"
    ADD CONSTRAINT "Apperance_Hands_fkey" FOREIGN KEY ("Hands")
    REFERENCES public."Assets" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Apperance"
    ADD CONSTRAINT "Apperance_Hat_fkey" FOREIGN KEY ("Hat")
    REFERENCES public."Assets" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Apperance"
    ADD CONSTRAINT "Apperance_Neck_fkey" FOREIGN KEY ("Neck")
    REFERENCES public."Assets" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Apperance"
    ADD CONSTRAINT "Apperance_Pants_fkey" FOREIGN KEY ("Pants")
    REFERENCES public."Assets" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Apperance"
    ADD CONSTRAINT "Apperance_Shoes_fkey" FOREIGN KEY ("Shoes")
    REFERENCES public."Assets" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Apperance"
    ADD CONSTRAINT "Apperance_TobBody_fkey" FOREIGN KEY ("TobBody")
    REFERENCES public."Assets" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Apperance"
    ADD CONSTRAINT "Apperance_WristLeft_fkey" FOREIGN KEY ("WristLeft")
    REFERENCES public."Assets" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Apperance"
    ADD CONSTRAINT "Apperance_WristRight_fkey" FOREIGN KEY ("WristRight")
    REFERENCES public."Assets" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Assets"
    ADD CONSTRAINT "Assets_Rank_fkey" FOREIGN KEY ("Rank")
    REFERENCES public."Rarity" ("Rank") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Breed"
    ADD CONSTRAINT "Breed_AssetId_fkey" FOREIGN KEY ("AssetId")
    REFERENCES public."Assets" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Breed"
    ADD CONSTRAINT "Breed_Rank_fkey" FOREIGN KEY ("Rank")
    REFERENCES public."Rarity" ("Rank") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Owner"
    ADD CONSTRAINT "Owner_FamilyId_fkey" FOREIGN KEY ("FamilyId")
    REFERENCES public."Family" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Owner"
    ADD CONSTRAINT "Owner_RoleId_fkey" FOREIGN KEY ("RoleId")
    REFERENCES public."Roles" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Owner"
    ADD CONSTRAINT "Owner_UserId_fkey" FOREIGN KEY ("UserId")
    REFERENCES public."User" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Pet"
    ADD CONSTRAINT "Pet_ApperanceId_fkey" FOREIGN KEY ("ApperanceId")
    REFERENCES public."Apperance" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Pet"
    ADD CONSTRAINT "Pet_BreedId_fkey" FOREIGN KEY ("BreedId")
    REFERENCES public."Breed" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Pet"
    ADD CONSTRAINT "Pet_FamilyId_fkey" FOREIGN KEY ("FamilyId")
    REFERENCES public."Family" ("Id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

END;