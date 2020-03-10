drop table if exists Apprenant;

drop table if exists Tuteur;

/*==============================================================*/
/* Table : Apprenant                                            */
/*==============================================================*/
create table Apprenant
(
   idApprenant          int not null AUTO_INCREMENT,
   idTuteur             int not null,
   nomApprenant         varchar(50),
   prenomApprenant      varchar(50),
   dateDeNaissance      varchar(100),
   lieuDeNaissance      varchar(100),
   genre                varchar(5),
   ville                varchar(254),
   etablissement        varchar(100),
   formation            varchar(100),
   telephoneApprenant   varchar(100),
   email                varchar(254),
   primary key (idApprenant)
);

/*==============================================================*/
/* Table : Tuteur                                               */
/*==============================================================*/
create table Tuteur
(
   idTuteur             int not null AUTO_INCREMENT,
   nomTuteur            varchar(50),
   prenomTuteur         varchar(50),
   profession           varchar(100),
   telephoneTuteur      varchar(100),
   primary key (idTuteur)
);

alter table Apprenant add constraint FK_association1 foreign key (idTuteur)
      references Tuteur (idTuteur) on delete restrict on update restrict;
