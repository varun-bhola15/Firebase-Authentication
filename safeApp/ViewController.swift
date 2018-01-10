//
//  ViewController.swift
//  safeApp
//
//  Created by varun bhola on 04/01/18.
//  Copyright © 2018 varun15bhola. All rights reserved.
//

import UIKit
import FirebaseAuth


class ViewController: UIViewController {

    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var SegemtControl: UISegmentedControl!
    
    
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    @IBAction func action(_ sender: Any) {
        if emailText.text != "" && passwordText.text != ""
        {
            if SegemtControl.selectedSegmentIndex == 0
            {
                Auth.auth().signIn(withEmail: emailText.text! , password: passwordText.text!, completion: { (user, error) in
                    if user != nil
                    {
                     //Sign in successful
                        self.performSegue(withIdentifier: "segue", sender: self)
                    }else{
                        if let myError = error?.localizedDescription
                        {
                            print(myError)
                        }else{
                            print("ERR")
                        }
                    }
                })
            }else//sign up user
            {
                Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!, completion: { (user, error) in
                    if user != nil
                    {
                        self.performSegue(withIdentifier: "segue", sender: self)
                    }else
                    {
                        if let myError = error?.localizedDescription
                        {
                            print(myError)
                        }else{
                            print("ERROR")
                        }
                    }
                })
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

