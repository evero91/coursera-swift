//
//  ViewController.swift
//  HamburguesasEnELMundo
//
//  Created by Everardo Guevara Soto on 02/03/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let color = Color()
    let pais = ColeccionPaises()
    let hamburguesa = ColeccionDeHamburguesa()
    
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblHamburguesa: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cargarPaisHamburuesa(sender: AnyObject) {
        let colorAleatorio = color.obtenColor()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
        
        lblPais.text = pais.obtenPais()
        lblHamburguesa.text = "Hamburguesa " + hamburguesa.obtenHamburguesa()
    }
    

}

