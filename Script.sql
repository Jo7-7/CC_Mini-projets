create schema Bd_Malloc_your_Muscle;
use Bd_Malloc_your_Muscle;

create table Abonnements(
	Id_abonnements int primary key,
    Nom_abonnements varchar(50) not null,
    prix float not null,
    périodicité varchar(50) not null,
    modalité_de_paiement varchar(50) not null);
    
create table Adhérents(
	Id_adhérent int primary key,
    Code_postal_adhérent int not null,
    Nom_adhérent varchar(50) not null,
    Prenom_adhérent varchar(50) not null,
    Téléphone int not null,
    Mail_adhérent varchar(50) not null,
    Date_debut date not null,
    Date_fin date not null,
    Id_abonnements int,
    foreign key (Id_abonnements) references Abonnements(Id_abonnements) on delete set null,
    unique (id_abonnements));
    
    drop table Adhérents;
    drop table Activité_sportive;
    drop table Abonnements;
    drop table Salles;
    drop table Activité_sportive;
    drop table Salle_de_sports;
    drop table Disposer;
    drop table Dérouler;
    drop table Proposer;
    
	show tables;
    describe table Adhérents;
        
        
create table Activité_sportive(
	Nom_activité varchar(50) primary key,
    Description text not null);
    
create table Salle_de_sports(
	Code_postal int primary key,
    Ville varchar(50) not null);
    
create table Salles(
	Num_salle int primary key);
    
create table Disposer(
	Id_adhérent int not null,
    Nom_activité varchar(50) not null,
    Code_postal int not null,
    foreign key (Id_adhérent) references Adhérents(Id_adhérent),
    foreign key (Nom_activité) references Activité_sportive(Nom_activité),
    foreign key (Code_postal) references Salle_de_sports(Code_postal));
    
create table Dérouler(
	Nom_activité varchar(50) not null,
    Num_salle int not null,
    foreign key (Nom_activité) references Activité_sportive(Nom_activité),
    foreign key (Num_salle) references Salles(Num_salle));
    
create table Proposer(
	Id_abonnements int not null,
    Code_postal int not null,
    foreign key	(Id_abonnements) references	Abonnements(Id_abonnements),
    foreign key (Code_postal) references Salle_de_sports(Code_postal));
    
alter table Adhérents add constraint ck_Date_debut check (Date_debut < Date_fin);    
	

    
    
    
    
	