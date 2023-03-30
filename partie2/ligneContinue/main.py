# coding=utf-8
from point import Point
from liste import Liste
from PIL import Image, ImageDraw

def dessine(listen, info):
	im = Image.new('RGB', (100, 100), (255, 255, 255))
	draw = ImageDraw.Draw(im)
	for i in range (liste.nbPoint):
		if i +1 != liste.nbPoint:
			shape = [liste.liste[i].x, liste.liste[i].y, liste.liste[i+1].x, liste.liste[i+1].y]
			print(shape)
			draw.line(shape, fill="red")
		else:
			draw.line([(liste.liste[i].x, liste.liste[i].y), (liste.liste[0].x, liste.liste[0].y)], fill="red")

	for p in liste.liste:
		draw.point(((p.x, p.y)), fill=black)

	im.save('img/'+info+'.jpg', quality=95)

p1 = Point(0, 0)
p2 = Point(0, 10)
p3 = Point(10, 10)
p4 = Point(10, 0)

print(p1.dist(p3))
print(p2.dist(p4))

liste = Liste()

liste.ajouter_point(p1, 0)
liste.ajouter_point(p2, 1)
liste.ajouter_point(p3, 2)
liste.ajouter_point(p4, 3)

print(liste.liste)

black = (0, 0, 0)

dessine(liste, "premier")

for p in liste.liste:
	p.deplacement(1, 3)
	dessine(liste, "x"+str(p.x))

liste.liste[2].deplacement(-1, -2)
dessine(liste, "troisieme")
liste.liste[3].deplacement(-2, -4)
dessine(liste, "quatrieme")
liste.liste[1].deplacement(6, 3)
dessine(liste, "cinquieme")

p1 = Point(0, 0)
p2 = Point(0, 10)
p3 = Point(10, 10)
p4 = Point(10, 0)

print(p1.dist(p3))
print(p2.dist(p4))

liste = Liste()

liste.ajouter_point(p1, 0)
liste.ajouter_point(p2, 1)
liste.ajouter_point(p3, 2)
liste.ajouter_point(p4, 3)

print(liste.liste)

liste.deplacementAleatoire()
dessine(liste, "alea1")
liste.deplacementAleatoire()
dessine(liste, "alea2")
liste.deplacementAleatoire()
dessine(liste, "alea3")
liste.deplacementAleatoire()
dessine(liste, "alea4")