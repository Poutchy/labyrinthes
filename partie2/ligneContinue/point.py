# coding=utf-8
import math

class Point:
	def __init__(self, x, y):
		self.x = x
		self.y = y

	def dist(self, p):
		c1 = ((p.x - self.x)**2)
		c2 = ((p.y - self.y)**2)
		return math.sqrt(c1 + c2)
	
	def deplacement(self, mx, my):
		self.x += mx
		self.y += my

	def milieu(self, p):
		x = (self.x + p.x) / 2
		y = (self.y + p.y) / 2
		return Point(x, y)

	def __str__(self):
		"point de coordonée " + str(self.x) + "," + str(self.y)