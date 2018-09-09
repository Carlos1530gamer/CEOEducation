//
//  ViewController2.swift
//  mxHack
//
//  Created by Usuario invitado on 8/9/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var nombre: UITextField!
    
    @IBOutlet weak var correo: UITextField!
    
    @IBOutlet weak var contraseña1: UITextField!
    
    @IBOutlet weak var contraseña2: UITextField!
    
    @IBAction func registro(_ sender: Any) {
        
        
        if nombre.text != "", correo.text != "", contraseña1.text != "", contraseña2.text != ""{
            self.performSegue(withIdentifier: "vp2", sender: self)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
