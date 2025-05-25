
create table Client (
  idclient    integer,
  nomclient   varchar2(100),
  emailclient  varchar2(50),
  adresse  varchar2(100),
  pays  varchar2(100),
  region  varchar2(100),
  numerotel  varchar2(100),
  dateinsc  date
);   

create table Commande (
  idcommande    integer,
  idclient    integer,
  datecommande   date,
  statutcommande  varchar2(50)
);

create table Paiement (
  idpaiement   integer,
  idcommande   integer,
  datepaiement  date,
  montant real,
  statutpaiement varchar2(50),
  modepaiement  varchar2(100)
);

create table livraison (
  idlivraison    integer,
  idcommande    integer,
  datelivraison     date,
  dateexpedition    date,
  transporteur     varchar2(100),
  statut           varchar2(100),
  region           varchar2(100)
);

create table Produit (
  idproduit    integer,
  nomproduit   varchar2(100),
  descproduit  varchar2(100),
  categorie  varchar2(100),
  marque  varchar2(100),
  prixunit  real,
  stockproduit  integer,
  nbretour      integer
);



create table DetailCommande (
  iddetailcom    integer,
  idcommande    integer,
  idproduit    integer,
  produit   varchar2(100),
  quantite  integer,
  prixunitaire  real
);





alter table livraison add constraint pk_livra primary key (idlivraison);
alter table Produit add constraint pk_prod primary key (idproduit);
alter table Commande add constraint pk_com primary key (idcommande);
alter table DetailCommande add constraint pk_com primary key (iddetailcommande);
alter table Paiement add constraint pk_paie primary key (idpaiement);
alter table Client add constraint pk_cli primary key (idclient);



alter table livraison add constraint fk_livra_com foreign key (idcommande) references Commande(idcommande);
alter table Commande add constraint fk_com_cli foreign key (idclient) references Client(idclient);
alter table DetailCommande add constraint fk_det_com foreign key (idcommande) references Commande(idcommande);
alter table DetailCommande add constraint fk_det_pro foreign key (idproduit) references Produit(idproduit);

