require_relative 'func'


# grille non coloré carrée
generationNot(100, 100, TruePrims, "true_prims", Grid)
generationNot(100, 100, SimplifiedPrims, "simplified_prims", Grid)

generationNot(100, 100, BinaryTree, "binary_tree", Grid)
generationNot(100, 100, Ellers, "ellers", Grid)
generationNot(100, 100, Kruskals, "kruskals", Grid)
generationNot(100, 100, RecursiveDivision, "recursive_division", Grid)
generationNot(100, 100, RecursiveBacktracker, "recursive_backtracker", Grid)
generationNot(100, 100, Sidewinder, "sidewinder", Grid)

generationGrNot(100, 100, Grid)

# grille coloré carré
generationColor(100, 100, TruePrims, "true_prims", ColoredGrid)
generationColor(100, 100, SimplifiedPrims, "simplified_prims", ColoredGrid)

generationColor(100, 100, BinaryTree, "binary_tree", ColoredGrid)
generationColor(100, 100, Ellers, "ellers", ColoredGrid)
generationColor(100, 100, Kruskals, "kruskals", ColoredGrid)
generationColor(100, 100, RecursiveDivision, "recursive_division", ColoredGrid)
generationColor(100, 100, RecursiveBacktracker, "recursive_backtracker", ColoredGrid)
generationColor(100, 100, Sidewinder, "sidewinder", ColoredGrid)

generationGrColor(100, 100, ColoredGrid)

# grille non coloré hexagonale
generationNot(100, 100, TruePrims, "hex_true_prims", HexGrid)
generationNot(100, 100, SimplifiedPrims, "hex_simplified_prims", HexGrid)

generationNot(100, 100, KruskalsHex, "hex_kruskals", HexGrid)
generationNot(100, 100, RecursiveBacktracker, "hex_recursive_backtracker", HexGrid)

generationHGrNot(100, 100, HexGrid)

# grille coloré hexagonale
generationColor(100, 100, TruePrims, "hex_true_prims", HexGridColor)
generationColor(100, 100, SimplifiedPrims, "hex_simplified_prims", HexGridColor)

generationColor(100, 100, KruskalsHex, "hex_kruskals", HexGridColor)
generationColor(100, 100, RecursiveBacktracker, "hex_recursive_backtracker", HexGridColor)

generationHGrColor(100, 100, HexGridColor)