


  CREATE OR REPLACE TYPE "ROOT"."ADRESSE_T" AS object (
	bis NUMBER, 
	rue varchar2(20),
	ville varchar2(20),
        pays varchar2(20)
)



  CREATE OR REPLACE TYPE "ROOT"."CLASSE_T" AS object (
        idclasse integer,
	libelle libelleclasse_t 

) 
/



  CREATE OR REPLACE TYPE "ROOT"."DATE_T" AS OBJECT (
	jours  varchar2(10),
        njours INTEGER,
        mois   INTEGER,
        annee  INTEGER,
        minute INTEGER, 
	heure  INTEGER
        
)



  CREATE OR REPLACE TYPE "ROOT"."EMPLOI_T" AS OBJECT (
	datedeb DATE_T ,
        datefin DATE_T ,
        matriculeEnseignant Number ,
        idclasse integer  ,
        idmatiere INTEGER ,
        idSalle Integer 
        

)


  CREATE OR REPLACE TYPE "ROOT"."ENSEIGNANT_T" UNDER personne_t (
	matriculeEnseignant Number, 
	departement varchar2(20),
        titre varchar2(50)

) NOT FINAL;

  CREATE OR REPLACE TYPE "ROOT"."ETUDIANT_T" UNDER personne_t (
	NCE Number, 
	idclasse INTEGER

) NOT FINAL;


  CREATE OR REPLACE TYPE "ROOT"."LIBELLECLASSE_T" AS object (
	filliere varchar2(20), 
	departement varchar2(20),
        niveau number,
        Cycle varchar2(20)
)


  CREATE OR REPLACE TYPE "ROOT"."PERSONNE_T" AS object (
	idPersonne Number, 
	nom varchar2(20),
	prenom varchar2(20),
        adresse adresse_t
) NOT FINAL;


  CREATE OR REPLACE TYPE "ROOT"."SALLE_T" AS object (
	idSalle Integer  , 
	libelle varchar2(20) ,
	numSalle integer)
