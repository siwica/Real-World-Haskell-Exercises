type Vector = (Double, Double)
type Shape = Circle Vector Double
           | Poly [Vector]
