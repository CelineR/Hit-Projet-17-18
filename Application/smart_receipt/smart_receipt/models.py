#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Le fichier models.py donne le shéma de la base de données 
# une fois le fichier remplit il suffit de lancer la commande 
# python manage.py syncdb

from django.db import models

# class d'abstraction pour la Table Status
class Status(models.Model) :
	# VARCHAR(32) nom
 	nom = models.CharField(max_length=32)
	# VARCHAR(255) description
	description = models.CharField(max_length=255, null=True)

# class d'abstraction pour la Table Groupe
class Groupe(models.Model) :
	# VARCHAR(32) nom
 	nom = models.CharField(max_length=32)
	# VARCHAR(255) description
	description = models.CharField(max_length=255, null=True)
	# La clé étrangère entre Personne
	status = models.ForeignKey(Status)

# class d'abstraction pour la Table Personne
class Utilisateur(models.Model) :
	# VARCHAR(30) nom 
	nom = models.CharField(max_length=30)
	# VARCHAR(30) prenom 
	prenom = models.CharField(max_length=30)
	# DATE() date_inscription
	date_inscription = models.DateField(null=True)
	# DATE() date_de_naissance 
	date_de_naissance = models.DateField(null=True)
	# VARCHAR(255) email 
	email = models.EmailField(unique=True)
	# VARCHAR(20) tel_fixe 
	telephone_fixe = models.CharField(max_length=20, null=True)
	# VARCHAR(20) tel_mobile 
	telephone_mobile = models.CharField(max_length=20, null=True)
	# VARCHAR(32) gds
	gds = models.CharField(max_length=32)
	# VARCHAR(32) gds2
	gds2 = models.CharField(max_length=32)
	# Les mot de passe ne doivent pas être stocké en clair.
	# VARCHAR(32) mot_de_passe 
	mot_de_passe = models.CharField(max_length=32)
	# VARCHAR(255) adresse
	adresse = models.CharField(max_length=255, null=True)
	# VARCHAR(5) code_postal
	code_postal = models.CharField(max_length=5)
	# VARCHAR(50) ville
	ville = models.CharField(max_length=50)
	# VARCHAR(50) pays
	pays = models.CharField(max_length=50)
	# La clé étrangère entre Personne
	groupe = models.ForeignKey(Groupe)
	# La clé étrangère entre Personne
	status = models.ForeignKey(Status)

	# Fonction pour l'affichage pour la partie administrateur
	def __unicode__(self):
		return self.prenom + ' ' + self.nom

# class d'abstraction pour la Table Image
class Image(models.Model) :
	# VARCHAR(32) taille
	taille = models.CharField(max_length=32)
	# VARCHAR(255) chemin
	chemin = models.CharField(max_length=255)
	# VARCHAR(100) extension
	extension = models.CharField(max_length=4)


# class d'abstraction pour la Table Categorie
class Categorie(models.Model) :
	# VARCHAR(32) nom
 	nom = models.CharField(max_length=32)
	# VARCHAR(255) description
	description = models.CharField(max_length=255, null=True)
	# La clé étrangère entre Personne
	image = models.ForeignKey(Image)

# class d'abstraction pour la Table Ticket
class Ticket(models.Model) :
	# VARCHAR(32) nom
 	nom = models.CharField(max_length=32)
	# VARCHAR(255) description
	date = models.DateField(null=True)
	# VARCHAR(255) description
	chemin = models.CharField(max_length=255)
	# FLAOT totalHT
	total_ht = models.FloatField(null=True)
	# FLOAT totalTTC
	total_ttc = models.FloatField(null=True)
	# La clé étrangère entre Personne
	image = models.ForeignKey(Image)
	# La clé étrangère entre Personne
	utilisateur = models.ForeignKey(Utilisateur)

# class d'abstraction pour la Table Campus
class Liste_de_Course(models.Model) :
	# VARCHAR(32) nom
 	nom = models.CharField(max_length=32)
	# VARCHAR(255) description
	date = models.DateField(null=True)
	# VARCHAR(255) description
	chemin = models.CharField(max_length=255)
	# FLAOT totalHT
	total_ht = models.FloatField(null=True)
	# FLOAT totalTTC
	total_ttc = models.FloatField(null=True)
	# La clé étrangère entre Personne
	archivage = models.DateField(null=True)
	# La clé étrangère entre Personne
	utilisateur = models.ForeignKey(Utilisateur)
	# Fonction pour l'affichage pour la partie administrateur
	def __unicode__(self):
		return self.nom

# class d'abstraction pour la Table Produit
class Produit(models.Model) :
	# La clé étrangère
	categorie =  models.ForeignKey(Categorie)
	# 
	prix_unitaire = models.FloatField()
	# 
	taxe = models.FloatField()
	# 
	description = models.CharField(max_length=255)
	# La clé étrangère
	image = models.ForeignKey(Image)

# class d'abstraction pour la Table Achat
class Achat(models.Model) :
	# INTEGER quantite
	quantite = models.IntegerField()
	# La clé étrangère entre Personne
	produit = models.ForeignKey(Produit)
	# La clé étrangère entre Personne
	ticket = models.ForeignKey(Ticket)

# class d'abstraction pour la Table Designation
class Designation(models.Model) :
	# 
	designation = models.CharField(max_length=255)
	# La clé étrangère
	produit = models.ForeignKey(Produit)

# class d'abstraction pour la Table Achat_Liste
class Achat_Liste(models.Model) :
	# 
	quantite = models.IntegerField()
	# La clé étrangère
	produit = models.ForeignKey(Produit)
	# La clé étrangère
	liste = models.ForeignKey(Liste_de_Course)

# class d'abstraction pour la Table Achat_Liste
class Lieu(models.Model) :
	# 
	longitude = models.FloatField()
	# 
	latitude = models.FloatField()
	# VARCHAR(100) adresse
	adresse = models.CharField(max_length=100)
	# VARCHAR(5) code_postal
	code_postal = models.CharField(max_length=5)
	# VARCHAR(100) ville
	ville = models.CharField(max_length=100)
	# VARCHAR(100) compl_adresse
	compl_adresse = models.CharField(max_length=100)

# class d'abstraction pour la Table Achat_Liste
class Avis_Lieu(models.Model) :
	# VARCHAR(100) avis
	avis = models.CharField(max_length=100)
	# VARCHAR(5) note
	note = models.FloatField()
	# VARCHAR(100) date
	date = models.DateField()
	# 
	lieu = models.ForeignKey(Lieu)
	# 
	utilisateur = models.ForeignKey(Utilisateur)

# class d'abstraction pour la Table Image
class Avis_Produit(models.Model) :
	# VARCHAR(100) avis
	avis = models.CharField(max_length=100)
	# VARCHAR(5) note
	note = models.FloatField()
	# VARCHAR(100) date
	date = models.DateField()
	# 
	produit = models.ForeignKey(Produit)
	# 
	utilisateur = models.ForeignKey(Utilisateur)

