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
generationNot(100, 100, HuntAndKill, "hunt_and_kill", Grid)
generationNot(100, 100, AldousBroder, "aldous", Grid)

generationGrNot(100, 100, Grid)

# grille non coloré hexagonale
generationNot(100, 100, TruePrims, "hex_true_prims", HexGrid)
generationNot(100, 100, SimplifiedPrims, "hex_simplified_prims", HexGrid)

generationNot(100, 100, KruskalsHex, "hex_kruskals", HexGrid)
generationNot(100, 100, RecursiveBacktracker, "hex_recursive_backtracker", HexGrid)
generationNot(100, 100, HuntAndKill, "hex_hunt_and_kill", HexGrid)
generationNot(100, 100, AldousBroder, "hex_aldous", HexGrid)

generationHGrNot(100, 100, HexGrid)

# grille coloré carré
generationColor(100, 100, TruePrims, "true_prims", ColoredGrid)
generationColor(100, 100, SimplifiedPrims, "simplified_prims", ColoredGrid)

generationColor(100, 100, BinaryTree, "binary_tree", ColoredGrid)
generationColor(100, 100, Ellers, "ellers", ColoredGrid)
generationColor(100, 100, Kruskals, "kruskals", ColoredGrid)
generationColor(100, 100, RecursiveDivision, "recursive_division", ColoredGrid)
generationColor(100, 100, RecursiveBacktracker, "recursive_backtracker", ColoredGrid)
generationColor(100, 100, Sidewinder, "sidewinder", ColoredGrid)
generationColor(100, 100, HuntAndKill, "hunt_and_kill", ColoredGrid)
generationColor(100, 100, AldousBroder, "aldous", ColoredGrid)

generationGrColor(100, 100, ColoredGrid)

# grille coloré hexagonale
generationColor(100, 100, TruePrims, "hex_true_prims", HexGridColor)
generationColor(100, 100, SimplifiedPrims, "hex_simplified_prims", HexGridColor)
generationColor(100, 100, HuntAndKill, "hex_hunt_and_kill", HexGridColor)
generationColor(100, 100, AldousBroder, "hex_aldous", HexGridColor)

generationColor(100, 100, KruskalsHex, "hex_kruskals", HexGridColor)
generationColor(100, 100, RecursiveBacktracker, "hex_recursive_backtracker", HexGridColor)

generationHGrColor(100, 100, HexGridColor)

# grille coloré sans mur carré
generationOnlyColor(100, 100, TruePrims, "true_prims", ColoredGrid)
generationOnlyColor(100, 100, SimplifiedPrims, "simplified_prims", ColoredGrid)

generationOnlyColor(100, 100, BinaryTree, "binary_tree", ColoredGrid)
generationOnlyColor(100, 100, Ellers, "ellers", ColoredGrid)
generationOnlyColor(100, 100, Kruskals, "kruskals", ColoredGrid)
generationOnlyColor(100, 100, RecursiveDivision, "recursive_division", ColoredGrid)
generationOnlyColor(100, 100, RecursiveBacktracker, "recursive_backtracker", ColoredGrid)
generationOnlyColor(100, 100, Sidewinder, "sidewinder", ColoredGrid)
generationOnlyColor(100, 100, HuntAndKill, "hunt_and_kill", ColoredGrid)
generationOnlyColor(100, 100, AldousBroder, "aldous", ColoredGrid)

generationGrOnlyColor(100, 100, ColoredGrid)

# grille coloré sans mur hexagonale
generationOnlyColor(100, 100, TruePrims, "hex_true_prims", HexGridColor)
generationOnlyColor(100, 100, SimplifiedPrims, "hex_simplified_prims", HexGridColor)
generationOnlyColor(100, 100, HuntAndKill, "hex_hunt_and_kill", HexGridColor)
generationOnlyColor(100, 100, AldousBroder, "hex_aldous", HexGridColor)

generationOnlyColor(100, 100, KruskalsHex, "hex_kruskals", HexGridColor)
generationOnlyColor(100, 100, RecursiveBacktracker, "hex_recursive_backtracker", HexGridColor)

generationHGrOnlyColor(100, 100, HexGridColor)