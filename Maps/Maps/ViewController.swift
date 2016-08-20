//
//  ViewController.swift
//  Maps
//
//  Created by Horacio Garza on 20/08/16.
//  Copyright © 2016 HGarz Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtEmail: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.txtEmail.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
        if textField == self.txtEmail {
            print("Empezando a editar email")
        }else{
            
            let txtP:UITextField = self.view.viewWithTag(10) as! UITextField
            
            if textField == txtP {
                print("Empezando a editar email")
            }
        }
    }
    

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if textField == txtEmail {
            (self.view.viewWithTag(10) as! UITextField).becomeFirstResponder()
        }else{
            self.view.endEditing(true)
            
        }
        
        return true
    }


    //MARK:
    
    @IBAction func onOutsideTap(sender: AnyObject) {
        self.view.endEditing(true)
    }
    
}

