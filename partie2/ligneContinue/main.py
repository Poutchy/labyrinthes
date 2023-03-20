from point import Point

p1 = Point(0, 0)
p2 = Point(1, 0)
p3 = Point(1, 1)
p4 = Point(0, 1)

print(p1.addSuiv(p2))
print(p2.addSuiv(p3))
print(p3.addSuiv(p4))
print(p4.addSuiv(p1))

print(p1.distSuiv())
print(p2.distSuiv())
print(p3.distSuiv())
print(p4.distSuiv())

print(p1.distPrec())
print(p2.distPrec())
print(p3.distPrec())
print(p4.distPrec())

print(p1.dist(p3))
print(p2.dist(p4))