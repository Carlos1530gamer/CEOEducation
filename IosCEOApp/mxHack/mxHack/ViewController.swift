//
//  ViewController.swift
//  mxHack
//
//  Created by Usuario invitado on 8/9/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var correo: UITextField!
    
    @IBOutlet weak var contraseña: UITextField!
   
    @IBAction func registrarse(_ sender: Any) {
        performSegue(withIdentifier: "VP", sender: self)
    }
    
    @IBAction func InicioSecion(_ sender: Any) {
        if correo.text != "" , contraseña.text != ""{
            performSegue(withIdentifier: "Materiassegue", sender: self)
            
    
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

