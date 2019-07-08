//
//  ViewController.swift
//  Mi ejemplo tienda
//
//  Created by MacGio on 6/24/19.
//  Copyright © 2019 ArturoRSMD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!
    
   
    private var myuser:String = "gio"
    private var mypasssword:String = "12345"
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.user.keyboardType = .emailAddress
        self.password.isSecureTextEntry = true
        
    }

    @IBAction func evaluate(_ sender: UIButton) {
        
        validateCredentials()
       // self.performSegue(withIdentifier: "segue1", sender: nil)
    
    }
    
    
    private func   validateCredentials()
    {
        
        if user.text == ""
        {
            showAlert(title: "Usuario vacio", description: "llena por favor el campo", type: .alert)
            print("tu usuario esta vacio")
        } else if password.text == ""
        {
             showAlert(title: "contraceña vacio", description: "llena por favor el campo", type: .alert)
            print("tu contraceña esta vacia")
        }else {
            
            if user.text == myuser && password.text==mypasssword
            {
                self.performSegue(withIdentifier: "segue1", sender: nil)
            } else
            {
                 showAlert(title: "los campos no coinciden", description: "verifica tus datos", type: .alert)
                print("los datos no coinciden")
            }
        }
        
    }
    
    func showAlert(title:String, description:String,type:UIAlertController.Style)
    {
        let alert = UIAlertController(title: title, message: description, preferredStyle: type)
        /* let cancelButton = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)*/
        let acceptButton = UIAlertAction(title: "Entendido", style: .default, handler: nil)
        //alert.addAction(cancelButton)
        
        alert.addAction(acceptButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
  
}

