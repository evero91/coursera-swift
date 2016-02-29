/* 
Generar un listado que vaya del numero 0 al 100
Reglas:
Si el numero es divisible entre cinco imprimir: # Bingo!!!
Si el numero es par imprimir: # par
Si el numero es impar imprimir: # impar
Si el numero se encuentra en un rango del 30 al 40 imprimir: # Viva Swift!!!
*/

import UIKit

for i in 0...100 {
    if (i % 5 == 0) {
        print("\(i) Bingo!!!")
    }
    
    if (i % 2 == 0 ) {
        print("\(i) par")
    } else {
        print("\(i) impar")
    }
    
    if i >= 30 && i <= 40 {
        print("\(i) Viva Swift!!!")
    }
}
