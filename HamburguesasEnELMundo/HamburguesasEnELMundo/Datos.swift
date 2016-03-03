//
//  Datos.swift
//  HamburguesasEnELMundo
//
//  Created by Everardo Guevara Soto on 02/03/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import Foundation
import UIKit

class ColeccionPaises {
    
    let paises: [String] = ["México 🇲🇽", "Estados Unidos 🇺🇸", "Francia 🇫🇷", "Colombia 🇨🇴", "Perù 🇵🇪",
    "Alemania 🇩🇪", "Brasil 🇧🇷", "Canadá 🇨🇦", "España 🇪🇸", "China 🇨🇳",
    "Italia 🇮🇹", "Reino Unido 🇬🇧", "Argentina 🇦🇷", "Chile 🇨🇱", "Paraguay 🇵🇾",
    "Uruguay 🇺🇾", "Venezuela 🇻🇪", "Portugal 🇵🇹", "Suiza 🇨🇭", "Rumanía 🇷🇴"]
    
    func obtenPais() -> String {
        return paises[Int(arc4random()) % paises.count]
    }
    
}

class ColeccionDeHamburguesa {
    
    let hamburguesas: [String] = ["Con Queso 🧀", "Vegetariana 🍅", "Ranchera 🔫", "Bacon 🍖", "De Pueblo ⛪️",
    "Barbacoa 🐐", "Ibérica 🏞", "Al Carbón 🔥", "De Pescado 🐟", "De Mariscos 🍤",
    "Picante 🌶", "Marciana 👽", "De Pollo 🍗", "De Perro 🐶", "De Rana 🐸",
    "Adulterada 💊", "De Rata 🐀", "Tóxica ☠️", "Minera ⛏", "De La Suerte 🍀"]
    
    func obtenHamburguesa() -> String {
        return hamburguesas[Int(arc4random()) % hamburguesas.count]
    }
    
}

struct Color {
    
    let colores: [UIColor] = [UIColor(red: 247/255, green: 211/255, blue: 255/255, alpha: 1),
    UIColor(red: 211/255, green: 227/255, blue: 255/255, alpha: 1),
    UIColor(red: 211/255, green: 255/255, blue: 241/255, alpha: 1),
    UIColor(red: 255/255, green: 246/255, blue: 211/255, alpha: 1)]
    
    func obtenColor() -> UIColor {
        return colores[Int(arc4random()) % colores.count]
    }
    
}