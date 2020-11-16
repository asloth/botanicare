
CREATE TABLE ORCHARDTYPE
(
    id serial NOT NULL PRIMARY KEY ,
    name text NOT NULL
);

CREATE TABLE USER
(
    id serial NOT NULL PRIMARY KEY,
    username text NOT NULL,
    email text NOT NULL,
    idOrchardtype int REFERENCES ORCHARDTYPE,
    address text NOT NULL,
    password text NOT NULL,
    ub text NOT NULL,
    woeid int NOT NULL,
    photo text NOT NULL,
    idOrchardType integer NOT NULL REFERENCES ORCHARDTYPE
);

CREATE TABLE VEGETABLETYPE
(
    id serial NOT NULL PRIMARY KEY,
    name text NOT NULL,
    state boolean NOT NULL
);

CREATE TABLE VEGETABLE
(
    id serial NOT NULL PRIMARY KEY,
    name text NOT NULL,
    nick text NULL,
    sowingtime text NOT NULL,
    quantity integer NULL,
    metrics text NULL,
    other text NULL,
    --number int NOT NULL,
    state boolean NOT NULL,
    idVegetableType integer NOT NULL REFERENCES VEGETABLETYPE,
    idUser integer NOT NULL REFERENCES USER
);

CREATE TABLE ACTIVITY
(
    id serial NOT NULL PRIMARY KEY ,
    name text NOT NULL,
    input text NOT NULL,
    quantity int NULL,
    metrics text NULL,
    cost float NOT NULL,
    did date NOT NULL,
    idVegetable integer NOT NULL REFERENCES VEGETABLE
);

CREATE TABLE PRODUCTION
(
    id serial NOT NULL PRIMARY KEY,
    harvest date NOT NULL,
    consumption int NULL,
    sale int NULL,
    metrics text NULL,
    totalProduction int NULL,
    totalCompost int Null,
    OthersActivities text NUll,
    idVegetable integer NOT NULL REFERENCES VEGETABLE
);

CREATE TABLE ECONOMIC
(
    id serial NOT NULL PRIMARY KEY,
    price float null,
    consumption float null,
    sale float null,
    saving float null,
    profit float null,
    idVegetable integer NOT NULL REFERENCES VEGETABLE
);

CREATE TABLE CALENDAR
(
    id serial NOT NULL PRIMARY KEY,
    ground date NULL,
    sowing date NULL,
    harvest date NULL,
    idVegetable integer NOT NULL REFERENCES VEGETABLE
);


