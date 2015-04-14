//
//  ViewController.swift
//  CalculadoraBasica
//
//  Created by Aaron Marquez on 10/03/15.
//  Copyright (c) 2015 Aaron Marquez. All rights reserved.
//

import UIKit
import Foundation




class ViewController: UIViewController {

    @IBOutlet var txtResultado: UITextView!

    var v1:Double = 0
    var v2:Double = 0
    var resultado: Double!
    var operacion: String!
    var valorInicial = true
    var puntoDecimal = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtResultado.editable = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func Numero(sender: UIButton) {
        if (valorInicial)
        {
            txtResultado.text = sender.currentTitle!
            valorInicial = false
        }
        else
        {
            txtResultado.text = txtResultado.text + sender.currentTitle!
        }
    }
    
    @IBAction func Limpiar(sender: UIButton) {
        txtResultado.text = "0"
        v1 = 0
        v2 = 0
        valorInicial = true
    }
    
    @IBAction func Operacion(sender: UIButton) {
        v1 = (txtResultado.text as NSString).doubleValue
        operacion = sender.currentTitle
        valorInicial = true
     
    }
    
    
    @IBAction func CambiarSigno(sender: UIButton) {
        var valor: Int
        valor = txtResultado.text.toInt()!
        txtResultado.text = (valor - (valor * 2)).description
    }
    
    
    @IBAction func Porcentaje(sender: UIButton) {
        v1 = (txtResultado.text as NSString).doubleValue
        txtResultado.text = (v1 / 100).description
    }
    
    @IBAction func PuntoDecimal(sender: UIButton) {
        if !puntoDecimal
        {
            txtResultado.text = txtResultado.text + "."
            puntoDecimal = true
        }
    }
    
    
    @IBAction func Resultado(sender: UIButton) {
        
        v2 = (txtResultado.text as NSString).doubleValue
        
        if((operacion as NSString).containsString("+"))
        {
            txtResultado.text = (v1 + v2).description
        }
        if((operacion as NSString).containsString("-"))
        {
            txtResultado.text = (v1 - v2).description
        }
        if((operacion as NSString).containsString("/"))
        {
            txtResultado.text = (v1 / v2).description
        }
        if((operacion as NSString).containsString("X"))
        {
            txtResultado.text = (v1 * v2).description
        }
        if((operacion as NSString).containsString("%"))
        {
            txtResultado.text = (v1 * v2).description
        }
        
        
    }
    
}

