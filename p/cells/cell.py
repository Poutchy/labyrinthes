class Cell:
    def __init__(self, row, column) -> None:
        self.row, self.column = row, column
        self.north
        self.south
        self.east
        self.west
        self.links = {}
    
    def link(self, cell, bidi = True):
        self.links[cell] = True
        if bidi:
            cell.link(self, False)
    
    def unlink(self, cell, bidi = True):
        del(self.links[cell])
        if bidi:
            cell.unlink(self, False)
    
    def links(self):
        return self.links
    
    def linked(self, cell):
        return cell in self.links
    
    def neighbors(self):
        list = []
        if self.north:
            list.add(self.north)
        if self.south:
            list.add(self.south)
        if self.east:
            list.add(self.east)
        if self.west:
            list.add(self.west)
        return list