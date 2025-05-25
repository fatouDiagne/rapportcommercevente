create table dim_client (
  nomclient   varchar2(100),
  mailclient  varchar2(70),
  adresse     varchar2(100),
  region       varchar2(50)
);

create table dim_livraison (
  transporteur   varchar2(100),
  region  varchar2(70)
);

create table dim_produit (
  nomprod   varchar2(100),
  categorie  varchar2(70),
  marque    varchar2(100),
  prix       real
);

create table temps (
  datetemps  date,
);

create table fait_commande (
  region    varchar2(100),
  annee   integer,
  montanttotale  real,
  quantitevendu integer,
  chiffraff     real,
  delai     real
);

create table fait_commerce1 (
  categorie    integer,
  region       varchar2(100),
  tauxretour    real
);

create table fait_commande2 (
  region    varchar2(100),
  mois   varchar2(100),
  nbrCom integer
);