import Cell from cells/cell
from random import random

class Grid:
    def __init__(self, rows, columns) -> None:
        self.rows, self.columns = rows, columns

        self.grid = self.prepare_grid()
        self.configure_cells()
    
    def prepare_grid(self):
        grid = [[]* self.columns] * self.rows
        for i in range (grid):
            for j in range (grid[i]):
                grid[i][j] = Cell(i, j)
        return grid
    
    def configure_cells(self):
        for i in range (self.grid):
            for j in range (self.grid[i]):
                ligne, col = self.grid[i][j], self.grid[i][j]

                self.grid[i][j].north = self.grid[i - 1][j]
                self.grid[i][j].south = self.grid[i + 1][j]
                self.grid[i][j].east = self.grid[i][j - 1]
                self.grid[i][j].west = self.grid[i][j + 1]
    
    def cell(self, row, column):
        if row not in (0, self.rows):
            return null
        elif column not in (0, self.columns):
            return null
        else:
            return self.grid[row][column]
    
    def random_cell(self):
        row = random.randint(self.rows)
        column = random.randint(self.columns)

        return self.grid[row][column]
    
    def size(self):
        return self.rows * self.columns
    
    def each_row(self):