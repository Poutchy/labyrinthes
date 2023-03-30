# coding=utf-8
from point import Point
from random import random

class Liste:
	def __init__ (self):
		self.liste = []
		self.nbPoint = 0
		self.tabDistance = []

	def ajouter_point (self, p, pos):
		if self.nbPoint == 0 or pos == self.nbPoint:
			self.liste.append(p)
		else:
			p1 = self.liste[0: pos]
			p2 = self.liste[pos+1:]
			self.liste = p1 + p + p2
		self.nbPoint+=1
	
	def supprimer_point (self, p, pos):
		for i in range (pos, self.nbPoint):
			self.liste[i] = self.liste[i+1]
		self.nbPoint-=1

	def distance_suivant (self, pos):
		suivant = pos
		if pos == self.nbPoint:
			suivant = 0
		self.liste[pos].dist(self.liste[suivant])

	def tabDistance (self):
		for i in range (self.nbPoint):
			self.tabDistance[i] = self.distance_suivant(i+1)

	def deplacementAleatoire (self, mult=1):
		for i in range (self.nbPoint):
			negx = random()
			x = random() * mult
			if negx < 0.5:
				x = -x
			negy = random()
			y = random() * mult
			if negy < 0.5:
				y = -y
			self.liste[i].deplacement(x, y)