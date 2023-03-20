import math

class Point:
	def __init__(self, x, y):
		self.x = x
		self.y = y
		self.prec = 0
		self.suiv = 0

	def addSuiv(self, p, bidi = True):
		self.suiv = p
		p.addPrec(self, False)

	def addPrec(self, p, bidi = True):
		self.prec = p
		if bidi:
			p.addSuiv(self, False)

	def dist(self, p):
		c1 = ((p.x - self.x)**2)
		c2 = ((p.y - self.y)**2)
		return math.sqrt(c1 + c2)
	
	def deplacement(self, nx, ny):
		self.x = nx
		self.y = ny

	def distSuiv(self):
		return self.dist(self.suiv)
	
	def distPrec(self):
		return self.dist(self.prec)
	
	def ajoutCond(self):
		return self.distSuiv() > 0.6
	
	def retireCond(self):
		return self.distSuiv() < 0.1
	
	def milieu(self, p):
		x = (self.x + p.x) / 2
		y = (self.y + p.y) / 2
		return Point(x, y)
	
	def ajoutSuiv(self, np):
		np.addSuiv(self.suiv)
		self.addSuiv(np)
	
	def retireSuiv(self):
		self.addSuiv(self.suiv.suiv)
	
	def ajout(self):
		while (self.ajoutCond):
			np = self.milieu(self.suiv)
			self.ajoutSuiv(np)
	
	def retire(self):
		while (self.retireCond()):
			self.retireSuiv()
	