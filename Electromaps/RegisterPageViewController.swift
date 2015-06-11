//
//  RegisterPageViewController.swift
//  Electromaps
//
//  Created by Xavier Cañadell on 11/6/15.
//  Copyright (c) 2015 Xavier Cañadell. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registerButtonTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        // Buscar campos en blanco
        
        if (userEmail.isEmpty || userPassword.isEmpty || userRepeatPassword.isEmpty)
        
        {
            // Mensaje de error
            
            displayMyAlertMessage("Todos los campos son obligatorios");
            
            return;
            
        }
        
        // Comprovar si passwords son iguales
        if (userPassword != userRepeatPassword)
        
        {
            //Mostrar mensaeje error
            displayMyAlertMessage("Las constraseñas no son iguales");
           
            return;
        }
        // STORE DATE
        
        NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey: "userEmail");
        NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey: "userPassword");
        NSUserDefaults.standardUserDefaults().synchronize();
        
        // DISPLAY ALERT MESSAGE WITH CONFIRMATION
        
        var myAlert = UIAlertController(title:"alert", message:"Registro correcto", preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default)
            { ACTION    in
                self.dismissViewControllerAnimated(true, completion: nil);
        
        }
        
        myAlert.addAction(okAction);
        self.presentViewController(myAlert, animated:true, completion:nil);
        
    }
    
    func displayMyAlertMessage(userMessage:String)
    {
        var myAlert = UIAlertController(title: "ALERT", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated:true, completion:nil);
        
    }
    
    
}
