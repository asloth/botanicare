CREATE TABLE "USERTYPE"
(
    "id" serial NOT NULL,
    "description" text NOT NULL,
    "name" text NOT NULL,
    CONSTRAINT "PK_usertype" PRIMARY KEY ( "id" )
);

CREATE TABLE "USER"
(
    "id" serial NOT NULL,
    "username" text NOT NULL,
    "email" text NOT NULL,
    "birthday" date NOT NULL,
    "password" text NOT NULL,
    "idUserType" integer NOT NULL,
    CONSTRAINT "PK_user" PRIMARY KEY ( "id" ),
    CONSTRAINT "FK_124" FOREIGN KEY ( "idUserType" ) REFERENCES "USERTYPE" ( "id" )
);

CREATE TABLE "TODO"
(
    "id" serial NOT NULL,
    "Title" text NOT NULL,
    "Content" text NOT NULL,
    "idUser" integer NOT NULL,
    CONSTRAINT "PK_notes" PRIMARY KEY ( "id" ),
    CONSTRAINT "FK_107" FOREIGN KEY ( "idUser" ) REFERENCES "USER" ( "id" )
);

CREATE TABLE "ORCHARDTYPE"
(
    "id" serial NOT NULL,
    "name" text NOT NULL,
    "description" text NOT NULL,
    CONSTRAINT "PK_orchardtype" PRIMARY KEY ( "id" )
);

CREATE TABLE "ORCHARD"
(
    "id" serial NOT NULL,
    "zone" text NOT NULL,
    "adress" text NOT NULL,
    "idUser" integer NOT NULL,
    "idOrchardType" integer NOT NULL,
    CONSTRAINT "PK_huerto" PRIMARY KEY ( "id" ),
    CONSTRAINT "FK_132" FOREIGN KEY ( "idUser" ) REFERENCES "USER" ( "id" ),
    CONSTRAINT "FK_141" FOREIGN KEY ( "idOrchardType" ) REFERENCES "ORCHARDTYPE" ( "id" )
);

CREATE TABLE "PLANT"
(
    "id" serial NOT NULL,
    "name" text NOT NULL,
    "enviroment" text NOT NULL,
    "weathermax" int NULL,
    "weatherMin" int NULL,
    "Sunhours" int NOT NULL,
    "fertilizer" boolean NOT NULL,
    "prune" boolean NOT NULL,
    "state" boolean NOT NULL,
    "idUser" integer NOT NULL,
    "type" text NULL,
    "species" text NULL,
    CONSTRAINT "PK_plant" PRIMARY KEY ( "id" ),
    CONSTRAINT "FK_104" FOREIGN KEY ( "idUser" ) REFERENCES "USER" ( "id" )
);

CREATE TABLE "ACTIVITY"
(
    "id" serial NOT NULL,
    "name" text NOT NULL,
    "cicle" timestamp NOT NULL,
    "idPlant" integer NOT NULL,
    CONSTRAINT "PK_prune" PRIMARY KEY ( "id" ),
    CONSTRAINT "FK_52" FOREIGN KEY ( "idPlant" ) REFERENCES "PLANT" ( "id" )
);

CREATE TABLE "ACTIVITYDETAIL"
(
    "id" serial NOT NULL,
    "notes" text NOT NULL,
    "dateProgramed" date NOT NULL,
    "dateRealized" date NULL,
    "state" bit NOT NULL,
    "idActivuty" integer NOT NULL,
    CONSTRAINT "PK_activitydetail" PRIMARY KEY ( "id" ),
    CONSTRAINT "FK_65" FOREIGN KEY ( "idActivuty" ) REFERENCES "ACTIVITY" ( "id" )
);

CREATE TABLE "PHOTO"
(
    "id" serial NOT NULL,
    "url" text NOT NULL,
    "idPlant" integer NOT NULL,
    CONSTRAINT "PK_photo" PRIMARY KEY ( "id" ),
    CONSTRAINT "FK_85" FOREIGN KEY ( "idPlant" ) REFERENCES "PLANT" ( "id" )
);

CREATE TABLE "VEGETABLE"
(
    "id" serial NOT NULL,
    "name" text NOT NULL,
    "number" int NOT NULL,
    "state" boolean NOT NULL,
    "idOrchard" integer NOT NULL,
    CONSTRAINT "PK_vegetable" PRIMARY KEY ( "id" ),
    CONSTRAINT "FK_149" FOREIGN KEY ( "idOrchard" ) REFERENCES "ORCHARD" ( "id" )
);

CREATE TABLE "PRODUCTION"
(
    "id" serial NOT NULL,
    "area" int NULL,
    "otherarea" text NULL,
    "ground" date NOT NULL,
    "sowing" date NOT NULL,
    "harvest" date NULL,
    "totalKg" decimal NULL,
    "totalUnid" int NULL,
    "lostKg" decimal NULL,
    "lost" decimal NULL,
    "consumptionKg" decimal NULL,
    "consumption" decimal NOT NULL,
    "salekg" decimal NULL,
    "sale" decimal NULL,
    "utility" decimal NULL,
    "state" boolean NOT NULL,
    "idVegetable" integer NOT NULL,
    CONSTRAINT "PK_production" PRIMARY KEY ( "id" ),
    CONSTRAINT "FK_188" FOREIGN KEY ( "idVegetable" ) REFERENCES "VEGETABLE" ( "id" )
);

CREATE TABLE "SUPPLIES"
(
    "id" serial NOT NULL,
    "name" text NOT NULL,
    "Kg" decimal NOT NULL,
    "aplication" date NOT NULL,
    "cost" decimal NOT NULL,
    "idProduction" integer NOT NULL,
    CONSTRAINT "PK_supplies" PRIMARY KEY ( "id" ),
    CONSTRAINT "FK_173" FOREIGN KEY ( "idProduction" ) REFERENCES "PRODUCTION" ( "id" )
);



